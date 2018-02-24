class Walker {
  float x;
  float y;

  float tx, ty;

  int count = 0;
  Walker() {
    x = width/2;
    y = height/2;
    tx = 0;
    ty = 1000;
  }

  void display() {

    rect(x, y,x/100,y/100);
  }

  void step() {

    float xstep=map(noise(tx), 0, 1, -10, 10);
    float ystep=map(noise(ty), 0, 1, 0, 10);
    fill(ystep*10, 150);
    int choice = int(random(4));

    if (choice == 0) {
      x+=xstep;
      count ++;
    } else if (choice == 1) {
      x-=xstep;
    } else if (choice == 2) {
      y+=ystep;
    } else {
      y-=ystep;
    }
    if (count == 500) {
      noLoop();
      saveFrame("walker/perlin_#####.tiff");
    }
    println(count);

    tx += 0.0001;
    ty += 0.0001;
  }
}//EOC