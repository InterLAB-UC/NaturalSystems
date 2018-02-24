class Walker {
  float x;
  float y;

  float tx, ty;

  Walker() {
    x = width/2;
    y = height/2;
    tx = 0;
    ty = 1000;
  }

  void display(float r, float g, float b) {
    stroke(r, g, b, 150);
    rect(x, y, 30, 30);
  }

  void step() {
    float xstep=map(noise(tx),0,1,0,10);
    float ystep=map(noise(ty),0,1,0,10);

    int choice = int(random(4));

    if (choice == 0) {
      x+=xstep;
    } else if (choice == 1) {
      x-=xstep;
    } else if (choice == 2) {
      y+=ystep;
    } else {
      y-=ystep;
    }


    tx += 0.001;
    ty += 0.01;
  }
}//EOC