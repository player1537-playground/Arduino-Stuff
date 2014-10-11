/*
#define SERVO_TO_LED
#define SIMPLE_TEST
#define USE_ATTINY
*/
#define TIMING_TO_LED

#ifdef USE_ATTINY
/*  #include "../lib/Servo8Bit/Servo8Bit.cpp" */
  typedef Servo8Bit Servo_t;
  const int servoPin = 0;
  const int ledPin = 2;
#else
  #include <Servo.h>
  typedef Servo Servo_t;
  const int servoPin = 0;
  const int ledPin = 13;
#endif

Servo_t servo;
int pos;

#ifdef SERVO_TO_LED
  Servo_t servo2;
#elif defined TIMING_TO_LED
  int ledValue = HIGH;
  const int ledPulseDuration = 100; /* milliseconds */
#endif

void setup()
{
  pinMode(servoPin, OUTPUT);
  servo.attach(servoPin, 1000, 2000);
#ifdef SERVO_TO_LED
  servo2.attach(ledPin, 0, 2000*1000);
#elif defined TIMING_TO_LED
  pinMode(ledPin, OUTPUT);
#endif
}

#ifdef SIMPLE_TEST
void loop() {
  servo.writeMicroseconds(1500);
  delay(1000);
  servo.writeMicroseconds(1000);
  delay(1000);
}

#else
void loop()
{
  servo.write(0);
#ifdef SERVO_TO_LED
  servo2.write(0);
  delay(2000);
#elif defined TIMING_TO_LED
  ledValue = HIGH;
  for (int i=0; i<2000/ledPulseDuration; i++) {
    digitalWrite(ledPin, ledValue);
    ledValue = !ledValue;
    delay(ledPulseDuration);
  }
#endif
  
  servo.write(180);
#ifdef SERVO_TO_LED
  servo2.write(180);
  delay(2000);
#elif defined TIMING_TO_LED
  ledValue = HIGH;
  for (int i=0; i<2000/ledPulseDuration; i++) {
    digitalWrite(ledPin, ledValue);
    ledValue = !ledValue;
    delay(ledPulseDuration);
  }
#endif
  
#ifdef TIMING_TO_LED
  digitalWrite(ledPin, HIGH);
#endif
  for (pos=0; pos<180; pos++) {
    servo.write(pos);
#ifdef SERVO_TO_LED
    servo2.write(pos);
#endif
    delay(15);
  }
  
#ifdef TIMING_TO_LED
  digitalWrite(ledPin, LOW);
#endif
  for (pos=180; pos>=1; pos--) {
    servo.write(pos);
#ifdef SERVO_TO_LED
    servo2.write(pos);
#endif
    delay(15);
  }
}
#endif
