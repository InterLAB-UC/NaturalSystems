class Walker {
  PrintWriter textFile= createWriter("walker/S1_25.txt"); 

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

    rect(x, y, x/100, y/100);
  }

  void step() {
    int finish = 0;
    float xstep=map(noise(tx), 0, 1, -10, 10);
    float ystep=map(noise(ty), 0, 1, 0, 10);
    stroke(map(ystep, 0, 10, 60, 255), 150);
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
    textFile.println("x:"+x+"__"+"y:"+y);
    if (count >= 1751) {

      
      saveFrame("walker/S1_25tiff");

      textFile.flush();
      textFile.close();

      finish ++;
      exit();
    }
    
    println(count );

    tx += 0.0001;
    ty += 0.00001;
  }
}//EOC