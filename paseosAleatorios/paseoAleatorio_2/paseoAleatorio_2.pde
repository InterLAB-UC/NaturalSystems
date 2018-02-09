Walker[]w = new Walker [1000];

void setup() {
  size(500, 500);
  background(255);
  for (int i =0; i< w.length; i++) {
    w[i] = new Walker();
  }
}

void draw() {
  for (int i = 0; i< w.length; i++) {
    w[i].display(i*.2, 0, i*.09, i*.02);
    w[i].step();
    
  }
  
}