#include "lib/Servo8Bit/Servo8Bit.h"
#include <inttypes.h>
#include <avr/interrupt.h>
#include <avr/io.h>

const int servoPin = PB4;
const int ledPin = 2;
int ledValue = LOW;
Servo8Bit servo;
int counter = 0;
int initialized = false;

void setup(void) {
  pinMode(ledPin, OUTPUT);
}

void loop(void) {
  if (!initialized) {
    servo.attach(servoPin);
    servo.write(10);
    initialized = true;
  }
  for (int pos=0; pos<180; ++pos) {
    if (++counter == 10) {
      ledValue = !ledValue;
      digitalWrite(ledPin, ledValue);
      counter = 0;
    }
    servo.write(pos);
    delay(15);
  }
}
