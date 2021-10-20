#include <SoftwareSerial.h>

SoftwareSerial softSerial(4,5);

//States for the state machine
#define ERROR -1
#define IDLE 0 
#define ARMED 1
#define FIRING 2 
#define DISABLED 3 
#define LOCKOUT 4
#define TIMEOUT_TEN 10000
#define TIMEOUT_TWO 2000

//Received messages
#define ARM_IGNITER_ONE "01234567"
#define FIRE_IGNITER_ONE "76543210"
#define ARM_IGNITER_TWO "12345678"
#define FIRE_IGNITER_TWO "87654321"

//Pins for matches
#define FIRST_MATCH_PIN 2
#define SECOND_MATCH_PIN 3

//Variables
String receivedMessage;
String stateStringList[] = {"IDLE","ARMED","FIRING","DISABED","LOCKOUT"};

//Igniter variable struct
typedef struct igniterStateMachine {

  int currentState; 
  uint32_t timeOutCounter;
  bool continuity;
  bool arm;
  bool fire;
  int number;
  bool isTimedOut;
  bool stateUpdate;
  
} Igniter;

//Create an Igniter Struct
Igniter* initIgniter(int number){

  Igniter * returnIgniter = (Igniter *)malloc(sizeof(Igniter) * 2);
  returnIgniter->currentState = IDLE;
  returnIgniter->continuity = true;
  returnIgniter->timeOutCounter = 0;
  returnIgniter->arm = false;
  returnIgniter->fire = false;
  returnIgniter->number = number;
  returnIgniter->isTimedOut = false;
  returnIgniter->stateUpdate = false;
  return returnIgniter;
  
}

void serialOutMsg(String message) {

    Serial.println(message);
    softSerial.println(message);
  
}

void printIgniterState(Igniter* igniter){

  String number = String(igniter->number);
  String arm = String(igniter->arm);
  String fire = String(igniter->fire);
  String timeout = String(igniter->isTimedOut);

  Serial.println("Igniter " + number + "\nState is: " + stateStringList[igniter->currentState] + 
                "\nArm Boolean: " + arm + "\nFire Boolean: " + fire + "\nTime Out: " + timeout+ "\n");
  
}

/** Changes the state of the state machine if in IDLE state to ARMED
*   Gets called if armed boolean changes
**/
int armFunction(Igniter* igniter) {
  if(igniter->arm) {
    if(igniter->currentState == IDLE && !igniter->fire)
      igniter->currentState = ARMED;
      //Start 10 Second timer and if fails then sets Arm and Fire to disabled
      igniter->timeOutCounter = millis(); // Snap shot of time when state changed
      
  } else {
     //serialOutMsg("IS NOT TRUE");
     if(igniter->currentState == ARMED){
        igniter->currentState = IDLE;
        //Resets the timer when changes state
        igniter->timeOutCounter = 0;
     }
  }

  return -1;
}
//Changes the state of the state machine if in ARMED state to FIRESTATE
int fireFunction(Igniter* igniter) {

  if(igniter->fire) {
    if(igniter->currentState == ARMED && igniter->arm) {
      igniter->currentState = FIRING;
      //Resets the timer when changes state
      igniter->timeOutCounter = millis();
      
      //Sets pin to Disabled for
      
    } 
  }
 return -1; 
}


/** Changes the state of variables in the Igniter given depending on the message input
 *  Also used to toggle between on and off
 *   returns NULL on fail 
*/
void updateState(String receivedMessage, Igniter* igniter) {
  if(igniter->continuity && !igniter->isTimedOut) {
    if(igniter->number == 1){
      if(receivedMessage == ARM_IGNITER_ONE) {
        //Arming true
        if(igniter->currentState == !LOCKOUT) {
          if(igniter->arm) {
              igniter->arm = false;
              serialOutMsg("First Igniter Arm Pin Deactivated");
          }else {
            igniter->arm = true;
            serialOutMsg("First Igniter Arm Pin Activated"); 
          }
        } else {
           //Is locked out  
            
        }
        igniter->stateUpdate = true;

      }else if(receivedMessage == FIRE_IGNITER_ONE) {
        //Firing true
        if(igniter->fire) {
          igniter->fire = false; 
          serialOutMsg("First Igniter Fire Pin Deactivated");
        } else {
          igniter->fire = true; 
          serialOutMsg("First Igniter Fire Pin Activated");  
        }
        
        igniter->stateUpdate = true;
            
      }  
    }else if(igniter->number == 2){
      if(receivedMessage == ARM_IGNITER_TWO) {
         //Arming true
         if(igniter->arm) {
            igniter->arm = false;
            serialOutMsg("Second Igniter Arm Pin Deactivated");
        }else {
          igniter->arm = true;
          serialOutMsg("Second Igniter Arm Pin Activated"); 
        }
         igniter->stateUpdate = true;
         
       } else if(receivedMessage == FIRE_IGNITER_TWO) {
        //Firing true
        if(igniter->fire) {
          igniter->fire = false; 
          serialOutMsg("Second Igniter Fire Pin Deactivated");
        } else {
          igniter->fire = true; 
          serialOutMsg("Second Igniter Fire Pin Activated");  
        }
        igniter->stateUpdate = true;
       } //else return NULL;
    }
    
  } else {
    //Continuity is not connected so dont update anystate
    if(igniter->isTimedOut) {
        serialOutMsg("Timed out please wait");
    } else {
      serialOutMsg("Continuity check has failed, Please try again");
    }
    
  }
  if(!igniter->arm && !igniter->fire) {
      igniter->currentState = IDLE;
      serialOutMsg("First Igniter Set Back To Idle"); 
  }
  return NULL;
}

void disableIgnitor(Igniter* igniter) {

    igniter->isTimedOut = true;
    igniter->timeOutCounter = millis(); // Start next timer for lock out
    igniter->currentState = DISABLED;
    serialOutMsg("Igniter " + String(igniter->number) + " has been disabled for 10 seconds");
  
}

void timeOutIgniter(Igniter * igniter) {
  

    igniter->timeOutCounter = 0; // Resets counter
    igniter->currentState = LOCKOUT;
    serialOutMsg("Igniter " + String(igniter->number) + " has been Locked Out, Set arm and fire to false to continue");
    igniter->isTimedOut = false;
  
}

void lockoutHandler(Igniter* igniter) {

    if(igniter->currentState == ARMED) {
      //If in armed state check for timer
      //serialOutMsg(String(millis() - firstIgniter->timeOutCounter));
      if((millis() - igniter->timeOutCounter) >= TIMEOUT_TEN) {
        
        disableIgnitor(igniter);
          
      }
    } else if(igniter->currentState == DISABLED) {

        if((millis() - igniter->timeOutCounter) >= TIMEOUT_TEN) {
          
          timeOutIgniter(igniter);
        }      
    } else if(igniter->currentState == FIRING) {

      if((millis() - igniter->timeOutCounter) >= TIMEOUT_TWO) {
          
           disableIgnitor(igniter);
      }
  }
}


Igniter* firstIgniter = initIgniter(1);
Igniter* secondIgniter = initIgniter(2);

void setup() {

  softSerial.begin(9600); // WILL HAVE TO CHANGE FOR CAN
  Serial.begin(9600); // WILL HAVE TO CHANGE FOR CAN
  pinMode(FIRST_MATCH_PIN, OUTPUT);
  pinMode(SECOND_MATCH_PIN, OUTPUT);
  //Also add adc reading for this
}


void loop() {


  //Only change state when something is read
  if(softSerial.available() > 0){
    
    //Stores inputted string into a buffer
    receivedMessage = softSerial.readString();

    //Only if received 8 bytes of information 
    if(receivedMessage.length() == 8) {
      //Updates the state varaibles for the Igniters 
      updateState(receivedMessage, firstIgniter);
      updateState(receivedMessage, secondIgniter);

      //If there was an updated state value then the stateUpdate will be called

      /**To Do:
       * Add timing circuits to change from armed and firing to Disabled.
       * On fire change update the pin for 2 seconds
       * Always output current state of both igniters and battery voltage
       */
      
      if(firstIgniter->stateUpdate) {
          firstIgniter->stateUpdate == false;
          armFunction(firstIgniter);
          fireFunction(firstIgniter);
          
      }
      if(secondIgniter->stateUpdate) {
          secondIgniter->stateUpdate == false;
          armFunction(secondIgniter);
          fireFunction(secondIgniter);

      }
    }
    //softSerial.println(receivedMessage.length());
    printIgniterState(firstIgniter);
    printIgniterState(secondIgniter);
  }

  lockoutHandler(firstIgniter);
  lockoutHandler(secondIgniter);
}
