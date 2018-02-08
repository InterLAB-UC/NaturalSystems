Walker w,w1;

void setup() {
  size(500,500);
  background(255);
  w = new Walker();
  w1 = new Walker();
}

void draw() {
  w.display(0,0,0);
  w.step();
  w1.display(255,0,0);
  w1.step();
}