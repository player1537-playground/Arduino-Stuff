const int MS_TO_US = 1000;
const int servoPin = 2;
const int cycleWidth = 20000;
const int incrementValue = 100;
int increment = incrementValue;
const int fullPulseWidth = 2000;
const int minPulseWidth = 1000;
int pulseWidth = minPulseWidth;
int counter = 0;

void setup()
{
  pinMode(servoPin, OUTPUT);
}

void loop()
{
  if (counter > 10) {
    if (increment > 0 && pulseWidth > fullPulseWidth) {
      increment = -incrementValue;
    } else if (increment < 0 && pulseWidth < minPulseWidth) {
      increment = incrementValue;
    }

    pulseWidth += increment;

    counter = 0;
  }

  digitalWrite(servoPin, HIGH);
  delayMicroseconds(pulseWidth);
  digitalWrite(servoPin, LOW);
  delayMicroseconds(cycleWidth - pulseWidth);

  counter++;
}
