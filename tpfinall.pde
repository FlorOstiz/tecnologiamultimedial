import processing.sound.*;
Principal aventura;
SoundFile base, click;

void setup() {
  size(800, 600);
  surface.setResizable(true);
  aventura = new Principal();
  base = new SoundFile(this, "base.mp3");
  click = new SoundFile(this, "off-click.mp3");
  base.loop();
}

void draw() {
  println(mouseX, mouseY);
  aventura.pantalla();
}
void mousePressed() {
  click.play();
  aventura.botonesPressed();
}
void keyPressed() {

  aventura.juego.mover();
}
