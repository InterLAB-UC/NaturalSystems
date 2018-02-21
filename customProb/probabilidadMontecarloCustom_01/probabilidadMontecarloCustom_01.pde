int x;
int y;
int c = 0;
void setup() {
  size(500, 500);
  background(255);
  colorMode(HSB, 360, 100, 100);
  noFill();
}

void draw() {
  
  step();
  cColor();
  if (c == 1000) {
    noLoop();
  }
}

void step() {
  int r1 = int(random(5));
  int p = r1*r1;
  int r2 = int(random(0, 25));

  if (p == r2) {
    x = int(random(50, width-50));
    y = int(random(50, height-50));
         if (x < width/2) {
    stroke(57, 100, 100,100);
  } else {
    stroke(10,70,99,100);
  }
    ellipse(x, y, r2+3, r2+3);

    c = c+1;
    println(c);
  }
}

void cColor() {
 
}