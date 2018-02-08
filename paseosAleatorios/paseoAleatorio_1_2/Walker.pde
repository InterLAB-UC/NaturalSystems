class Walker {
  int x;
  int y;

  Walker() {
    x = width/2;
    y = height/2;
  }

  void display(float r,float g,float b,float t) {
    stroke(r,g,b,t);
    strokeWeight(3);
    point(x, y);
  }

  void step() {
    int choice = int(random(4));

    if (choice == 0) {
      x++;
    } else if (choice == 1) {
      x--;
    } else if (choice == 2) {
      y++;
    } else {
      y--;
    }
  }
}//EOC