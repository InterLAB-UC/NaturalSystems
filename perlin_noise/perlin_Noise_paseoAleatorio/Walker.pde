class Walker {
  float x;
  float y;
  
  float tx,ty;

  Walker() {

    tx = 0;
    ty = 1000;
  }

  void display(float r,float g,float b) {
    stroke(r,g,b,15);
    point(x, y);
  }

  void step() {
    x = map(noise(tx),0,1,0,width);
    y = map(noise(ty),0,1,0,height);
    
    tx += 0.001;
    ty += 0.01;
  }
}//EOC