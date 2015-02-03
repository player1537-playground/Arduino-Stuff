#include "message.h"
#include <Arduino.h>

byte read_message(struct message_t *message) {
	byte body_length;

	switch (message->state) {
	case WAITING_FOR_LENGTH: {
		if (Serial.available() > 0) {
			message->data.header.length = Serial.read();
			message->state = WAITING_FOR_ACTION;
		}
		break;
	}
	case WAITING_FOR_ACTION: {
		if (Serial.available() > 0) {
			message->data.header.action = Serial.read();
			message->state = WAITING_FOR_MESSAGE;
		}
		break;
	}
	case WAITING_FOR_MESSAGE: {
		body_length = message->data.header.length - sizeof(message->data.header);
		if (Serial.available() >= body_length) {
			for (byte i=0; i<body_length; ++i) {
				message->data.body[i] = Serial.read();
			}
			message->state = MESSAGE_READY;
		}
		break;
	}
	case MESSAGE_READY:
		/** Do nothing if the message is ready */
		break;
	}

	return message->state == MESSAGE_READY;
}
