Walker[]w = new Walker [7];

void setup() {
  size(874, 614);//formato A8
  //size(1748,1228);
  background(0);
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