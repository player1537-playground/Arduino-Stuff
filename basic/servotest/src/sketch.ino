#include <Servo.h>

const byte servoPin = 0;
Servo servo;
int pos = 20;

void setup(void) {
  servo.attach(servoPin);
}

void loop(void) {
  for (int pos=0; pos < 180; ++pos) {
    servo.write(pos);
    delay(15);
  }

  for (int pos=180; pos > 0; pos--) {
    servo.write(pos);
    delay(15);
  }
}
