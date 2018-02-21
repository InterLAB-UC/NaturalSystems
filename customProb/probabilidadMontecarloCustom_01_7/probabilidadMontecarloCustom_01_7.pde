int x;
int y;
int c = 0;
void setup() {
  size(500, 500);
  background(0);
  colorMode(HSB, 360, 100, 100);
  
}

void draw() {

  step();

  if (c == 1000) {
    noLoop();
    saveFrame("output/frames#####.tiff");
  }
}

void step() {
  int r1 = int(random(5));
  int p = r1*r1;
  int r2 = int(random(0, 25));

  if (p == r2) {
    x = int(random(50, width-50));
    y = int(random(50, height-50));
    float xColor = map(x, 50, width-50, 0, 360);
    float yColor = map(y, 50, height-50, 0, 100);
    float brig = map(y, 50, width-50, 100, 30);
    float opcty = map(y, 50, width-50, 255, 0);
    stroke(xColor, yColor, brig,opcty);
    fill(xColor, yColor, brig, 100);


    ellipse(x, y, r2+3, r2+3);

    c = c+1;
    println(c);
  }
}