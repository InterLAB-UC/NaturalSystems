class Walker {
  int x;
  int y;

  Walker() {
    x = width/2;
    y = height/2;
  }

  void display(float r, float g, float b) {
    stroke(r, g, b,10);
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
      
      x = constrain(x,int(xGauss()),int(xGauss()));
      y = constrain(y,int(yGauss()),int(yGauss()));
      
    //noFill();
    //stroke(0,10);
    //ellipse(width/2,height/2,xGauss(),yGauss());

    //println(xGauss()+" "+yGauss()+" "+mouseX);
  }

  //formula para la distribución normal en X
  float xGauss() {
    float Gauss = randomGaussian();
    float sDev = 100;
    float media = width/2;


    float xG = sDev * Gauss + media;

    return xG;
  }

  //formula Para la distribución normal en Y
  float yGauss() {
    float Gauss = randomGaussian();
    float sDev = 10;
    float media = height/2;


    float yG = sDev * Gauss + media;

    return yG;
  }
}//EOC