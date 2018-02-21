Walker[]w = new Walker [100];

void setup() {
  size(500, 500);
  background(255);
  colorMode(HSB,360,100,100);
  for (int i =0; i< w.length; i++) {
    w[i] = new Walker();
  }
}

void draw() {
  for (int i = 0; i< w.length; i++) {
    w[i].display(map(mouseX,0,width,0,360), 50, 50);
    w[i].step();
  }
}