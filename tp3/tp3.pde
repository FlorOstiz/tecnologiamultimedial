PImage  corto1, corto2, corto3, corto4, corto5, corto6, corto7, corto86, corto97;
PImage inicio, fin, presentacion, creditos ;
int pantalla;
PFont texto, textoo;
boolean activo;
int botX, botY, botTam;
void setup() {
  size(800, 600);

  fondos();
  Boton();
  pantalla = 0;
  activo = true;
}
void draw() {
  println("MouseY" + mouseY);
  println("MouseX" + mouseX);
  println("pantalla es = " + pantalla);
  if (pantalla == 0) {
    inicio();
 // }
 // if (frameCount>250 && pantalla==0) {
   // presentacion();
  } else if (pantalla == 1) {
    presentacion();
  } else if (pantalla ==2) {
    creditos();
  } else if (pantalla ==3) {
    corto1();
  } else if (pantalla == 4) {
    corto2();
  } else if (pantalla== 5) {
    corto3();
  } else if (pantalla == 6) {
    corto4();
  } else if (pantalla == 7) {
    corto5();
  } else if (pantalla == 8) {
    corto6();
  } else if (pantalla == 9) {
    fin();
  }
  if (activo) {
    fill(100, 0, 200);
    noStroke();
    rect(botX, botY, botTam, botTam/2);
    rect(0, botY, botTam, botTam/2);
  }
}
void mousePressed() {
  MousePressed();
}
