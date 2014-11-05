const byte shiftSerialPin = 2;
const byte shiftRClockPin = 1;
const byte shiftSRClockPin = 0;
int counter = 0;

void setup(void) {
  pinMode(shiftSerialPin, OUTPUT);
  pinMode(shiftRClockPin, OUTPUT);
  pinMode(shiftSRClockPin, OUTPUT);
  digitalWrite(shiftSerialPin, LOW);
  digitalWrite(shiftRClockPin, LOW);
  digitalWrite(shiftSRClockPin, LOW);
  digitalWrite(shiftSerialPin, LOW);
}

void loop(void) {
  if (++counter == 1 << 4) {
    counter = 0;
  }

  for (byte i=0; i<4; i++) {
    digitalWrite(shiftSerialPin, (counter & (1 << i)) >> i);
    digitalWrite(shiftSRClockPin, HIGH);
    digitalWrite(shiftSRClockPin, LOW);
  }
  digitalWrite(shiftRClockPin, HIGH);
  digitalWrite(shiftRClockPin, LOW);

  delay(1000 / 8);

}
