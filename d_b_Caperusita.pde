class Caperusita {
  Vidas vidas;
  Resize resize;
  int px, py, tam;
  int cant;
  PImage roja;
  int cantVidas;
  color c[] = new color[3];

  Caperusita() {
    vidas = new Vidas();
    resize = new Resize();
    roja = loadImage("roja.png");
    px = resize.valorX(0);
    py = resize.valorY(50);
    tam = 50;
    cantVidas = 3;
    c[0] = (#000000); // negro paredes
    c[1] = (#c20303);// rojo conejo
  }

  void dibujar() {
    vidas.dibujar();
    image(roja, resize.valorX(px), resize.valorY(py), resize.valorX(tam), resize.valorY(tam));
  }

  void reset() {
    //cantVidas = 3;
    vidas = new Vidas();
  }

  void mover() {

    if (keyCode == RIGHT) {
      px+=50;
    }
    if (keyCode == DOWN) {
      py+=50;
    }
    if (keyCode == LEFT ) {
      px-=50;
    }
    if (keyCode == UP) {
      py-=50;
    }
    println(get(px, py));
    if (get(resize.valorX(px), resize.valorY(py)) == c[0] || get(resize.valorX(px), resize.valorY(py)) == c[1] ) {
      vidas.quitarVidas();
      px = resize.valorX(0);
      py = resize.valorY(50);
    }
  }
}
