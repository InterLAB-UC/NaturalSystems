class Walker {
  int x;
  int y;



  Walker() {
    x = 0;
    y = height/2;
  }

  void display(float r, float g, float b, float t) {
    stroke(r, g, b, t);
    strokeWeight(1);
    point(x, y);
  }

  void step() {
    float r = random(1);
    if (r < 0.4) {
      x++;
    } else if (r < 0.6) {
      x--;
    } else if (r < 0.8) {
      y++;
    } else {
      y--;
    }
  }
}//EOC