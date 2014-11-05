const byte speakerPin = 0;
int freq = 400;
//const double TWO_PI = 3.141592 * 2;
int increment = 5;
byte counter = 0;
int baud = 8000;

double simpleSin(double t) {
  double threeT = t * t * t;
  double fiveT = threeT * t * t;
  return t - threeT / 6.0 + fiveT / 120.0;
}

void setup(void) {
  pinMode(speakerPin, OUTPUT);
}

byte bytebeat_01(int t) {
  return (t % 255 & t) - (t >> 13 & t);
}

byte bytebeat_02(int t) {
  return t % (t >> 8 ^ t >> 12);
}

byte bytebeat_03(int t) {
  return (t % (t >> 8 | t >> 16)) ^ t;
}

byte bytebeat_04(int t) {
  return (t * (t >> 5 | t >> 8)) >> (t >> 16 & t);
}

byte bytebeat_05(int t) {
  const int n = 3;
  return t * t / (t >> n);
}

byte bytebeat_06(int t) {
  return t / ((t % (t >> 13 & t)));
}

byte bytebeat_07(int t) {
  return ((t / (t >> 8 & t >> 7)) & t) - 1;
}

byte bytebeat_08(int t) {
  return t * (1 / t * t) ^ t;
}

byte bytebeat_09(int t) {
  const int n = 3;
  return t & (1 << n) >> n << 7;
}

void loop(void) {
  analogWrite(speakerPin, bytebeat_09(++counter));
  delayMicroseconds(1000 * 1000 / baud);
}
