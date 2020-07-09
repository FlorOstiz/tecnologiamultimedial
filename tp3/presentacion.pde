void presentacion() {
  image(presentacion, 0, 0);
  //carga fuente
  texto = loadFont("Cambria.vlw");
  //Inciar
  fill( 255, 0, 0);
  rect(100, 400, 100, 25);
  fill(0);
  textFont(texto, 18);
  text("Iniciar", 150, 403);

  //boton Creditos
  fill(255, 0, 0);
  rect(650, 400, 100, 25);
  fill(0);
  textFont(texto, 18);
  textAlign(CENTER, TOP);
  text("Créditos", 700, 403);
}
void PresentacionMousePressed() {
  //boton creditos
  if (mouseX > 650 && mouseX < 750 && mouseY > 400 && mouseY < 425) {
    pantalla = 2;
  }
  //boton iniciar
  if (mouseX >100 && mouseX< 200 && mouseY > 400 && mouseY< 425) {
    pantalla = 3;
  }
}
