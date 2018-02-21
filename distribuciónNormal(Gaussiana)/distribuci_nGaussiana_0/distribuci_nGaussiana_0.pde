void setup() {
  size(500, 500);
  background(255);
}

void draw() {
  float xloc = randomGaussian();

  float sd = 50;
  float mean = width/2;

  xloc = (xloc*sd)+mean;
  
  fill(0,10);
  noStroke();
  ellipse(xloc,height/2,50,50);
}