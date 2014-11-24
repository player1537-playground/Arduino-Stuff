
#include <Servo.h>

Servo esc;  // create servo object to control an ESC (via ppm)
int value;
const int messageSize = 10;
const byte buttonPin = 7;
#define ON LOW
#define OFF HIGH
#define OFF_VALUE 20

void setup()
{
  Serial.begin(9600);
  esc.attach(9);  // attaches the esc on pin 9 to the servo object
  pinMode(buttonPin, INPUT_PULLUP);
}

void loop()
{
  char buffer[messageSize];
  if (Serial.available() > 0) {
    delay(10);
    int size = Serial.available();
    if(messageSize < size) {
      size = messageSize;
    }
    Serial.readBytes(buffer, size);  //gets one byte from serial buffer

    value = atoi(buffer);
    Serial.print("Read: '");
    Serial.print(value);
    Serial.println("'");

  }
  if (true || digitalRead(buttonPin) == ON) {
    esc.write(value);                  // sets the servo position according to the scaled value
  } else {
    esc.write(OFF_VALUE);
  }
  delay(20);                           // waits for the servo to get there
}
//note to self minimum value can only be set manually? autoarm dont' work yo
//Current minimum value is 20 because (20+180) / 2 = 100. 100 is half power
