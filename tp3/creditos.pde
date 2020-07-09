void creditos() {
  image(creditos, 0, 0);
 // textoo = loadFont("ArialBold.vlw");
  texto = loadFont("Cambria.vlw");
  fill(255,0,0);
  textFont(texto, 45);
  textAlign(CENTER, TOP);
  text("Créditos", 390, 50);
  fill(255);
  textFont(texto, 30);
  textLeading(40);
  text("Hecho por Florencia Ostiz \n para \n Tecnologia multimedial 1 \n Año 2020", 390, 110);

  
  //boton creditos
  
  fill(255,0,0);
  rect(650, 400, 100, 25);
  fill(255);
  textFont(texto, 18);
  text("Atrás", 700, 403);
}
void CreditosMousePressed() {
  if (mouseX > 650 && mouseX < 750 && mouseY > 400 && mouseY < 425) {
    pantalla = 1;
  }
}
