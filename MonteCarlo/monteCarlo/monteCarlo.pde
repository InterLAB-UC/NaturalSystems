void setup() {
  frameRate(1);
}

void draw() {
  montecarlo();
  println(frameCount+" " +montecarlo());
}

float montecarlo() {
  while (true) {
    float r1 = random(1);
    float p = r1;
    float r2 = random(1);

    if (r2 < p) {
      return r1;
    }
  }
}