class Vidas {
  Resize resize;
  PFont texto;
  int cantVidas;
  PImage perdiste;
  PImage gane;
  int pantalla;
  int seg, m;
  boolean stop;

  Vidas() {
    resize = new Resize();
    texto = loadFont("Cambria.vlw");
    cantVidas = 3;
    perdiste = loadImage("perdi.png");
    gane = loadImage("gane.png");
    seg = 15;
    m = 0;
    stop = false;
  }
  void dibujar() {
    textFont (texto, 25);
    fill(255, 0, 50);
    text ("Vidas = " + (cantVidas), resize.valorX(575), resize.valorY(60));
  }
  void textoPerder() {  
    if (cantVidas <= 0) {
      image(perdiste, 0, 0, width, height);
    }
  }
  void quitarVidas() {
    //(cantVidas);
    cantVidas = cantVidas -1;
    dibujar();
  }
  void ganar() {
    image(gane, 0, 0, width, height);
  }
  void textolab() {
    textFont (texto, 18);
    fill(255);
    text("Sin importarle el conejo y su séquito le quitan el canasto y salen corriendo hacia un laberinto", resize.valorX(390), resize.valorY(10));
    text("¿Prodrá Roja recuperarlo sin perder todas sus vidas?", resize.valorX(300), resize.valorY(30));
  }  

  void tiempo() {
    pushStyle();
    if (stop ==false) {
      fill(255);
      textSize(20);
      delay(1000);
      if (seg<=15) {
        text(m + ":" + seg,resize.valorX(600), resize.valorY(50));
        seg = seg-1;
      }
      if (seg==0) {
        stop = true;
        image(perdiste, 0, 0, width, height);
      }
      popStyle();
    }
  }
}
