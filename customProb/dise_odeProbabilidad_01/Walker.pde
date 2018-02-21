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
    int r1 = int(random(5));
    int p = r1*r1;
    int r2 = int(random(0,25));
    
    if(p == r2){
    stepsize = r2;
    }
    float stepx = random(-stepsize, stepsize);
    float stepy = random(-stepsize, stepsize);

    x += stepx;
    y += stepy;
    println(p+":"+r2);
  }
}//EOC