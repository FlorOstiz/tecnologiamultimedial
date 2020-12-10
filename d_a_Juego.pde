class Juego {
  color c[] = new color [1];
  Laberinto laberinto;
  Vidas vidas; 
  Caperusita roja;
  Conejo conejo;
  Canasto canasto;
  Resize resize;

  Juego() {
    resize = new Resize();
    laberinto = new Laberinto();
    vidas = new Vidas();
    roja = new Caperusita();
    conejo = new Conejo();
    conejo.roja = roja;
    canasto = new Canasto();
    roja.vidas = vidas;

    c[0] = (#c70202);// rojo de canasto
  }

  void dibujar() {
    background(0);
    laberinto.dibujar();
    //vidas.tiempo();
    conejo.dibujar();
    roja.dibujar();
    canasto.dibujar(loadImage("canasto1.png"), resize.valorX(750), resize.valorY(550), resize.valorX(50), resize.valorY(50));
    vidas.textoPerder();
    if (get(resize.valorX(roja.px), resize.valorY(roja.py)) == c[0]) {
      vidas.ganar();
    }
  }

  void reset() {
    vidas = new Vidas();
    roja.vidas = vidas;
  }
  void mover() {
    roja.mover();
  }
}
