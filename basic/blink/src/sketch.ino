const int pinNumber = 13;

void setup(void) {
  Serial.begin(9600);
  pinMode(pinNumber, OUTPUT);
}

void loop(void) {
  digitalWrite(pinNumber, HIGH);
  delay(1000);
  digitalWrite(pinNumber, LOW);
  delay(1000);
}
