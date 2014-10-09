
#include <Servo.h> 
 
Servo esc;  // create servo object to control an ESC (via ppm) 
int value;
const int messageSize = 10;
 
void setup() 
{ 
  Serial.begin(9600);
  esc.attach(9);  // attaches the esc on pin 9 to the servo object 
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
    Serial.println(value);
    
  }
  esc.write(value);                  // sets the servo position according to the scaled value 
  delay(20);                           // waits for the servo to get there 
} 
//note to self minimum value can only be set manually? autoarm dont' work yo
//Current minimum value is 20 because (20+180) / 2 = 100. 100 is half power
