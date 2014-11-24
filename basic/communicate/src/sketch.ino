#include "lib/communicate/message.h"

#define NUM_MOTORS 4

struct motor_t {
  byte value;
  byte pin;
} motors[NUM_MOTORS];

enum motor_message_instruction_t {
  MOTOR_INSTRUCTION_GET = '=',
  MOTOR_INSTRUCTION_SET = '?',
};

struct motor_message_t;
struct motor_message_t {
  struct {
    char motor_number;
    char instruction;
  } header;
  char value[MAX_MESSAGE_LENGTH - 2];
};

void process_motor_message(struct motor_message_t*, byte);
void process_message(void);

void process_message(void) {
  if (message_state != MESSAGE_READY) {
    return;
  }

  byte body_length = message.header.length - sizeof(message.header);

  switch (message.header.action) {
  case 'm':
    process_motor_message((struct motor_message_t *)&message, body_length);
    break;
  }

}

void process_motor_message(struct motor_message_t *motor_message, byte size) {
  byte motor_number = motor_message->header.motor_number - '0';

  if (!(0 <= motor_number && motor_number < NUM_MOTORS)) {
    return;
  }

  switch (motor_message->header.instruction) {
  case MOTOR_INSTRUCTION_SET:
    if (size < sizeof(struct motor_message_t)) {
      byte index = size - MEMBER_SIZE(struct motor_message_t, header);
      motor_message->value[index] = '\0';
    }
    motors[motor_number].value = atoi(motor_message->value);
    break;

  case MOTOR_INSTRUCTION_GET:
    Serial.print("Motor ");
    Serial.print(motor_number);
    Serial.print(" = ");
    Serial.println(motors[motor_number].value);
    break;

  default:
    return;
  }
}

void setup(void) {
  Serial.begin(9600);
}

void loop(void) {
  if (read_message()) {
    process_message();
  }
}
