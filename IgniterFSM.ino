#include <SoftwareSerial.h>

SoftwareSerial softSerial(4,5);

//States for the state machine
#define ERROR -1
#define IDLE 0 
#define ARMED 1
#define FIRING 2 
#define DISABLED 3 
#define LOCKOUT 4
#define TIMEOUT 100000

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


//Igniter variable struct
typedef struct igniterStateMachine {

  int currentState; 
  uint32_t timeout;
  bool continuity;
  bool arm;
  bool fire;
  int number;

  bool stateUpdate;
} Igniter;

//Create an Igniter Struct
Igniter* initIgniter(int number){

  Igniter * returnIgniter = malloc(sizeof(Igniter));
  returnIgniter->currentState = IDLE;
  returnIgniter->timeout = TIMEOUT;
  returnIgniter->continuity = true;
  returnIgniter->arm = false;
  returnIgniter->fire = false;
  returnIgniter->number = number;

  returnIgniter->stateUpdate = false;
  return returnIgniter;
}

void serialOutMsg(char * message) {

    Serial.println(message);
    softSerial.println(message);
  
}

void serialOutNoPl(char * message) {
  
  Serial.print(message);
  softSerial.print(message);
    
}

//Changes the state of the state machine if in IDLE state to ARMED
void armFunction(Igniter* igniter) {

  //SET THE TIMER HERE FOR TEN SECONDS
  //SET THE TIMER HERE FOR TEN SECONDS
  //SET THE TIMER HERE FOR TEN SECONDS
  //SET THE TIMER HERE FOR TEN SECONDS
  if(igniter->currentState == IDLE && !igniter->fire) {
    char igniterNumber [10];
    itoa(igniter->number, igniterNumber, 10);
    igniter->currentState = ARMED;
    serialOutNoPl("Igniter ");
    serialOutNoPl(igniterNumber);
    serialOutNoPl(" Set to Armed State\n");
    
  }
  return NULL;
}
//Changes the state of the state machine if in ARMED state to FIRESTATE
void fireFunction(Igniter* igniter) {

  //SET THE TIMER HERE FOR TWO SECONDS
  //SET THE TIMER HERE FOR TWO SECONDS
  //SET THE TIMER HERE FOR TWO SECONDS
  //SET THE TIMER HERE FOR TWO SECONDS
  if(igniter->currentState == ARMED && igniter->arm) {
    char igniterNumber [10];
    itoa(igniter->number, igniterNumber, 10);
    igniter->currentState = FIRING;
    serialOutNoPl("Igniter ");
    serialOutNoPl(igniterNumber);
    serialOutNoPl(" Set to Fire State\n");
  } 
 return NULL; 
}


/** Changes the state of variables in the Igniter given depending on the message input
 *  Also used to toggle between on and off
 *   returns NULL on fail 
*/
void updateState(String receivedMessage, Igniter* igniter) {
  if(igniter->continuity) {
    if(igniter->number == 1){
      if(receivedMessage == ARM_IGNITER_ONE) {
        //Arming true
        if(igniter->arm) {
            igniter->arm = false;
            serialOutMsg("First Igniter Arm Pin Deactivated");
        }else {
          igniter->arm = true;
          serialOutMsg("First Igniter Arm Pin Activated"); 
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
            
      }else return NULL;
      
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
       } else return NULL;
    }
  } else {
    //Continuity is not connected so dont update anystate 
    serialOutMsg("Continuity check has failed, Please try again");
    return NULL;
  }
  return NULL;
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
       * Add states going backwards when deactivate the checks
       * Check why the states dont always activate
       * Add timing circuits to change from armed and firing to Disabled.
       * Print current updates of the system every so often
       * On fire change update the pin for 2 seconds
       * Always output current state of both igniters and battery voltage
       */
      
      if(firstIgniter->stateUpdate) {
          firstIgniter->stateUpdate == false;

          if(firstIgniter->arm) {

              armFunction(firstIgniter);
            
          } 
          if(firstIgniter->fire) {

              fireFunction(firstIgniter);
            
          }
          
          
          
      }else if(secondIgniter->stateUpdate) {
          secondIgniter->stateUpdate == false;

          if(secondIgniter->arm) {

              armFunction(secondIgniter);
            
          }
          if(secondIgniter->fire) {
              Serial.println("DOES GET HERE");
              fireFunction(secondIgniter);
            
          }
        
      }
    }
    //softSerial.println(receivedMessage.length());
  }


  
}
