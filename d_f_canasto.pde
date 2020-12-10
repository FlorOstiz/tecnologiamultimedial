class Canasto {
  PImage canasto;

  Canasto() {
    loadImage("canasto1.png");
  }
  void dibujar(PImage canasto, float x, float y, int tam2, int tam3) {
    image(canasto, x, y, tam2, tam3);
  }
}
