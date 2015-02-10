#include <Servo.h>

const byte servoPin = 0;
Servo servo;
int speed = 20;

void setup(void) {
  servo.attach(servoPin);
}

void loop(void) {
	servo.write(speed);
	delay(15);
}
