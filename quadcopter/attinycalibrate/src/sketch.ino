#include "../lib/Servo8Bit/Servo8Bit.h"
#include "../lib/Servo8Bit/Servo8Bit.cpp"
 
Servo8Bit esc;  // create servo object to control an ESC (via ppm) 
int value;
const int escPin = 0;
const int escHigh = 60;
const int escLow = 25;
int counter;
 
void setup() 
{ 
  esc.attach(escPin);  // attaches the esc on pin 9 to the servo object 
  counter = 0;
} 
 
void loop() 
{ 
  /*
  if (Serial.available() > 0) {
    delay(10);
    int size = Serial.available();
    if(messageSize < size) {
      size = messageSize;
    }
    Serial.readBytes(buffer, size);  //gets one byte from serial buffer
    
    value = atoi(buffer);
    Serial.println(value);
    
  }
  */
  counter += 20;
  if (counter > 2000) {
    counter = 0;
  }
  
  if (counter > 1000) {
    esc.write(escHigh);
  } else {
    esc.write(escLow);
  }
    // sets the servo position according to the scaled value 
  delay(20);                           // waits for the servo to get there 
} 
//note to self minimum value can only be set manually? autoarm dont' work yo
//Current minimum value is 20 because (20+180) / 2 = 100. 100 is half power
