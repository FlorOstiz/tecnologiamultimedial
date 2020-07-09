void corto1() {
  image(corto1, 0, 0);

  texto = loadFont("Cambria.vlw");
  //boton que si
  fill(255,0,0);
  rect(30, 500, 190, 25);
  fill(0);
  textFont(texto, 18);
  text("Dejar que te acompañe", 123, 503);

  //boton no
  fill(255,0,0);
  rect(545, 500, 210, 25);
  fill(0);
  textFont(texto, 18);
  textAlign(CENTER, TOP);
  text("No dejar que te acompañe", 650, 503);
}
void Corto1MousePressed() {
  //boton SÍ
  if (mouseX > 30 && mouseX < 220 && mouseY > 500 && mouseY < 525) {
    pantalla = 4;
  }
  //boton NO
  if (mouseX >545 && mouseX< 755 && mouseY > 500 && mouseY< 525) {
    pantalla = 5;
  }
}
