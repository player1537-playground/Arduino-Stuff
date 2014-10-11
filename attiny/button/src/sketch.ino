const int buttonPin = 1;
const int ledPin = 2;
int ledState = HIGH;
int prevButton = LOW;
int curButton = LOW;

void setup()
{
  pinMode(buttonPin, INPUT);
  pinMode(ledPin, OUTPUT);
  digitalWrite(ledPin, ledState);
}

void loop()
{
  curButton = digitalRead(buttonPin);
  if (!prevButton && curButton) {
    ledState = !ledState;
    digitalWrite(ledPin, ledState);
  }
  prevButton = curButton;
}
