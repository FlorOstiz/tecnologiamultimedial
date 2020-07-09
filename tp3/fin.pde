void fin() {
  image(fin, 0, 0);

  //boton Volver a Iniciar
  texto = loadFont("Cambria.vlw");
  fill( 255, 0, 0);
  rect(350, 550, 150, 25);
  fill(0);
  textFont(texto, 18);
  textAlign(CENTER, TOP);
  text("Volver a Comenzar", 427, 555);
}
void FinMousePressed() {
  if (mouseX > 350 && mouseX < 500 && mouseY > 550 && mouseY < 575) {
    pantalla = 0;
  }
}
