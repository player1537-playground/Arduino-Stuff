#include "message.h"
#include <Arduino.h>

byte read_message(void) {
  switch (message_state) {
  case WAITING_FOR_LENGTH: {
    if (Serial.available() > 0) {
      message.header.length = Serial.read();
      message_state = WAITING_FOR_ACTION;
    }
    break;
  }
  case WAITING_FOR_ACTION: {
    if (Serial.available() > 0) {
      message.header.action = Serial.read();
      message_state = WAITING_FOR_MESSAGE;
    }
    break;
  }
  case WAITING_FOR_MESSAGE: {
    byte body_length = message.header.length - sizeof(message.header);
    if (Serial.available() >= body_length) {
      for (byte i=0; i<body_length; ++i) {
	(void)Serial.read();
      }
      message_state = WAITING_FOR_LENGTH;
    } else {
      for (byte i=0; i<body_length; ++i) {
	message.body[i] = Serial.read();
      }
      message_state = MESSAGE_READY;
    }
    break;
  }
  case MESSAGE_READY:
    /** Do nothing if the message is ready */
    break;
  }

  return message_state == MESSAGE_READY;
}
