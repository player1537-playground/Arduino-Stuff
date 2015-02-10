const byte pinA0 = 0;
const byte pinA1 = 1;
const byte pinA2 = 2;
const byte pinA3 = 3;
byte counter = 0;

void setup(void) {
  pinMode(pinA0, OUTPUT);
  pinMode(pinA1, OUTPUT);
  pinMode(pinA2, OUTPUT);
  pinMode(pinA3, OUTPUT);
}

void loop(void) {
  if (++counter == 10) {
    counter = 0;
    delay(1000);
  }

  counter = 4;

  digitalWrite(pinA0, (counter >> 0) & 1);
  digitalWrite(pinA1, (counter >> 1) & 1);
  digitalWrite(pinA2, (counter >> 2) & 1);
  digitalWrite(pinA3, (counter >> 3) & 1);

  delay(1000);
}
