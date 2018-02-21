class PaintDrop {
  int x;
  int y;

  PaintDrop () {
    x = width/2;
    y = height/2;
  }

  void display() {
    stroke(0, 10);
    point(x, y);
  }

  void distr() {
    float xloc = randomGaussian();

    float sd = 50;
    float mean = width/2;

    xloc = (xloc*sd)+mean;
    
    x = int(xloc);

    float yloc = randomGaussian();

    float sdy = 50;
    float meany = height/2;

    yloc = (yloc*sdy)+meany;
    
    y = int(yloc);
  }
}//EOF