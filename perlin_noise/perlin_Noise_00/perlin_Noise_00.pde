/* la implementacion del algoritmo Perlin noise
 en processing nos genera un rango entre 0 y 1.
 
 Pensemos el algoritmo en una sola dimensión, esto
 sería una secuencia lineal de valores a través del tiempo
 
 Ahora para acceder a un valor particular del algoritmo pensemos
 en pasar ese momento específica a la función:
 */

// float n = noise(3);

// usemos un avariable para preguntarlo

/*float t = 3; // tiempo

void draw() {
  float n = noise(t);
  println(n);
}*/

/* Esto resulta en el mismo valor todo el loop.
Porque estamos preguntando el resultado del algoritmo
en el mismo punto del tiempo, si incrementamos la variable t
obtendremos un resultado distinto*/

float t = 0; // iniciamos en el punto temporal 0

void draw() {
  float n = noise(t);
  println(n);
  t += 0.01; // nos movemos adelante en el tiempo
}