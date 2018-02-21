class Walker {
  int x;
  int y;
  float stepsize = 0;

  Walker() {
    x = width/2;
    y = height/2;
  }

  void display(float r, float g, float b) {
    stroke(r, g, b);
    point(x, y);
  }

  void step() {
    float r1 = random(0,10);
    float p = r1;
    float r2 = random(0,20);
    
    if(p == r2){
    stepsize = r2;
    }
    float stepx = random(-stepsize, stepsize);
    float stepy = random(-stepsize, stepsize);

    x += stepx;
    y += stepy;
  }
}//EOC