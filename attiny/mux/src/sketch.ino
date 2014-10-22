const int inPin = A3;
const int outAPin = 2;
const int outBPin = 1;
const int outCPin = 0;
const int ledPin = 4;
int counter = 0;
const int maxCounter = 1 << 3;

void setup(void) {
  pinMode(inPin, INPUT);
  pinMode(outAPin, OUTPUT);
  pinMode(outBPin, OUTPUT);
  pinMode(outCPin, OUTPUT);
  pinMode(ledPin, OUTPUT);
}

void loop(void) {
  digitalWrite(outAPin, (counter >> 2) & 1);
  digitalWrite(outBPin, (counter >> 1) & 1);
  digitalWrite(outCPin, (counter >> 0) & 1);

  if (++counter == maxCounter) {
    counter = 0;
  }

  delay(5);

  int value = digitalRead(inPin);

  digitalWrite(ledPin, value);

  delay(500);
}
