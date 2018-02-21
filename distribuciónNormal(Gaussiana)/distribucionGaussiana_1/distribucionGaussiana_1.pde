PaintDrop p;

void setup() {
  size(500, 500);
  background(255);
  
  p = new PaintDrop();
}

void draw() {

  p.display();
  p.distr();

}