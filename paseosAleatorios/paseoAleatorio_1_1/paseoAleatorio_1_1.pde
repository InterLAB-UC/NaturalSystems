Walker[]w = new Walker [1000];
import processing.pdf.*;

boolean savePDF = false;

int rem = 0;

void setup() {
  size(500, 500);
  background(255);
  frameRate(12);
  for (int i =0; i< w.length; i++) {
    w[i] = new Walker();
  }
}

void draw() {
  rem = frameCount%30;

  
  for (int i = 0; i< w.length; i++) {
    w[i].display(i*.2, 0, i*.09, i*.02);
    w[i].step();
  }
  if (rem == 0){
  saveFrame("walker/frames######.tiff");
  }

}

void mousePressed() {
  savePDF = true;
}

void mouseReleased() {
  savePDF = false;
}