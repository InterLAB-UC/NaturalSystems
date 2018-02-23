Walker[]w = new Walker [10];

void setup() {
  size(500, 500);
  background(255);
  for (int i =0; i< w.length; i++) {
    w[i] = new Walker();
  }
}

void draw() {
  for (int i = 0; i< w.length; i++) {
    w[i].display();
    w[i].step();
  }
}

void keyPressed() {
  saveFrame("walker/perlin_#####.tiff");
}