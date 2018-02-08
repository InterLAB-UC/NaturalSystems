Walker[]w = new Walker [100];

void setup() {
  size(500, 500);
  background(255);
  for (int i =0; i< w.length; i++) {
    w[i] = new Walker();
  }
}

void draw() {
  for (int i = 0; i< w.length; i++) {
    w[i].display(i*2, 0, 0);
    w[i].step();
  }
}