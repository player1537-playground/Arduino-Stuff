#ifndef COMMUNICATE_MESSAGE_H_
#define COMMUNICATE_MESSAGE_H_

#include <Arduino.h>

#define MAX_MESSAGE_LENGTH 32
#define MEMBER_SIZE(type, member) sizeof(((type *)0)->member)

enum message_state_t {
  WAITING_FOR_LENGTH,
  WAITING_FOR_ACTION,
  WAITING_FOR_MESSAGE,
  MESSAGE_READY
} message_state;

struct message_t {
  struct {
    byte length;
    byte action;
  } header;
  byte body[MAX_MESSAGE_LENGTH];
} message;

byte read_message(void);

#endif // COMMUNICATE_MESSAGE_H_
