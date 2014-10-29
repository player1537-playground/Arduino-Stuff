const byte speakerPin = 0;
int freq = 400;
//const double TWO_PI = 3.141592 * 2;
int increment = 5;
byte counter = 0;

double simpleSin(double t) {
  double threeT = t * t * t;
  double fiveT = threeT * t * t;
  return t - threeT / 6.0 + fiveT / 120.0;
}

void setup(void) {
  pinMode(speakerPin, OUTPUT);
}

void loop(void) {
  analogWrite(speakerPin, 255 * sin(freq * micros() / 1000.0 / 1000.0));
}
