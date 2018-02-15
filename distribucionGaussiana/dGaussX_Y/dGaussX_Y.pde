//trabajando con la distribución normal
float sDev = 20; //desviacion estandar
float media; //media
void setup() {
  size(200, 200);
  media = width/2;
  background(255);
}

void draw() {
  stroke(0, 30);
  point(xGauss(), yGauss());
}


//formula para la distribución normal en X
float xGauss() {
  float Gauss = randomGaussian();



  float x = sDev * Gauss + media;

  return x;
}

//formula Para la distribución normal en Y
float yGauss() {
  float Gauss = randomGaussian();



  float Y = sDev * Gauss + media;

  return Y;
}