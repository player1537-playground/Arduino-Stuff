#include "lib/communicate/message.h"

#define NUM_MOTORS 4

struct motor_t {
  byte value;
  byte pin;
} motors[NUM_MOTORS];

struct motor_message_t {
	byte motor_number;
	byte value;
};

byte process_motor_message(struct motor_message_t*, byte);
void process_message(struct message_t *);

void process_message(struct message_t *message) {
  byte body_length;

  if (message->state != MESSAGE_READY) {
    return;
  }

  Serial.print(message->data.header.length);
  Serial.print(": ");

  body_length = message->data.header.length - sizeof(message->data.header);

  switch (message->data.header.action) {
  case 'm':
	  if (process_motor_message((struct motor_message_t *)&message->data, body_length)) {
		  message_processed(message);
	  }
    break;
  }

}

byte process_motor_message(struct motor_message_t *motor_message, byte size) {
  byte motor_number = motor_message->motor_number;

  if (!(0 <= motor_number && motor_number < NUM_MOTORS)) {
	  return 1;
  }

  motors[motor_number].value = motor_message->value;

  Serial.print("Motor[");
  Serial.print((int)motor_number);
  Serial.print("] = ");
  Serial.print((int)motors[motor_number].value);

  Serial.print("     ");

  Serial.print((int)motor_message->motor_number);
  Serial.print(" ");
  Serial.println((int)45);


  return 1;
}

struct message_t message;
void setup(void) {
  Serial.begin(9600);
}

void loop(void) {
  if (read_message(&message)) {
    process_message(&message);
  }
}
