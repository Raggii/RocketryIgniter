int pinParashute = 7;
int pinIgnition = 6;

void setup() {
  // put your setup code here, to run once:
  pinMode(pinParashute, OUTPUT);
  pinMode(pinIgnition, OUTPUT);

}

void loop() {
  // put your main code here, to run repeatedly:

  digitalWrite(pinParashute, HIGH);
  digitalWrite(pinIgnition, HIGH);

}
