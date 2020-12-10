class Principal {
  Fondos fondos;
  Textos textos;
  Juego juego;
  Vidas vidas;
  Resize resize;
  int pantalla;
  PImage cursor;


  Principal() {
    
    //noCursor();
    fondos = new Fondos();
    textos = new Textos();
    juego = new Juego();
    vidas = new Vidas();
    resize = new Resize();
    cursor = loadImage("cursor.png");
    pantalla = 0;
  }

  void pantalla() {
    
    if (pantalla == 0) {
      fondos.Pinicio();
    } else if (pantalla == 1) {
      fondos.Presentacion();
    } else if (pantalla == 2) {
      fondos.Pcreditos();
    } else if (pantalla == 3) {
      fondos.P1();
    } else if (pantalla == 4) {
      fondos.P2();
    } else if (pantalla == 5) {
      fondos.P3();
    } else if (pantalla == 6) {
      fondos.P4();
    } else if (pantalla == 7) {
      fondos.P5();
    } else if (pantalla == 8) {
      fondos.P6();
    } else if (pantalla == 9) {
      fondos.P7();
    } else if (pantalla == 10) {
      fondos.P8();
    } else if (pantalla == 11) {
      fondos.P9();
    } else if (pantalla == 12) {
      fondos.P10();
    } else if (pantalla == 13) {
      fondos.P11();
    } else if (pantalla == 14) {
      fondos.P12();
    } else if (pantalla == 15) { 
      juego = new Juego();
      fondos.Pfinal1();
    } else if (pantalla == 16) {
      fondos.Pfinal2();
      juego = new Juego();
    } else if (pantalla == 17) {
      image(cursor, mouseX, mouseY, 20, 40);
      juego.dibujar();
    }
    //image(cursor, mouseX, mouseY, 20, 40);
  }


  void dibujarBoton(int px, int px2, int py, int py2, int num) {
    if (mouseX > px && mouseX < px2 && mouseY > py && mouseY < py2) {
      pantalla = num;
    }
  }


  void botonesPressed() {

    if (pantalla == 0 ) {
      dibujarBoton(0, resize.valorX(800), 0, resize.valorY(600), 1);
    } else if (pantalla == 1 ) {
      dibujarBoton(resize.valorX(100), resize.valorX(200), resize.valorY(400), resize.valorY(425), 3); 
      dibujarBoton(resize.valorX(650), resize.valorX(750), resize.valorY(400), resize.valorY(425), 2);
    } else if (pantalla == 2) {
      dibujarBoton(resize.valorX(650), resize.valorX(750), resize.valorY(400), resize.valorY(425), 1);
    } else if (pantalla == 3) {
      dibujarBoton(resize.valorX(30), resize.valorX(220), resize.valorY(500), resize.valorY(525), 4); 
      dibujarBoton(resize.valorX(545), resize.valorX(755), resize.valorY(500), resize.valorY(525), 17); // aca tendria q enlazar mini juego
    } else if (pantalla == 4) {
      dibujarBoton(resize.valorX(300), resize.valorX(490), resize.valorY(500), resize.valorY(525), 5);
    } else if (pantalla == 5) {
      dibujarBoton(resize.valorX(300), resize.valorX(490), resize.valorY(500), resize.valorY(525), 6);
    } else if (pantalla == 6) {
      dibujarBoton(resize.valorX(300), resize.valorX(490), resize.valorY(500), resize.valorY(525), 7);
    } else if (pantalla == 7) {
      dibujarBoton(resize.valorX(30), resize.valorX(220), resize.valorY(500), resize.valorY(525), 8); 
      dibujarBoton(resize.valorX(545), resize.valorX(755), resize.valorY(500), resize.valorY(525), 9);
    } else if (pantalla == 8) {
      dibujarBoton(resize.valorX(300), resize.valorX(490), resize.valorY(500), resize.valorY(525), 14);
    } else if (pantalla == 9) {
      dibujarBoton(resize.valorX(30), resize.valorX(220), resize.valorY(500), resize.valorY(525), 15); 
      dibujarBoton(resize.valorX(545), resize.valorX(755), resize.valorY(500), resize.valorY(525), 11);
    } else if (pantalla == 10) {
      dibujarBoton(resize.valorX(300), resize.valorX(490), resize.valorY(500), resize.valorY(525), 15);
    } else if (pantalla == 11) {
      dibujarBoton(resize.valorX(60), resize.valorX(180), resize.valorY(500), resize.valorY(525), 12); 
      dibujarBoton(resize.valorX(340), resize.valorX(460), resize.valorY(500), resize.valorY(525), 10);
      dibujarBoton(resize.valorX(600), resize.valorX(720), resize.valorY(500), resize.valorY(525), 10);
    } else if (pantalla == 12) {
      dibujarBoton(resize.valorX(60), resize.valorX(180), resize.valorY(500), resize.valorY(525), 10); 
      dibujarBoton(resize.valorX(600), resize.valorX(720), resize.valorY(500), resize.valorY(525), 13);
    } else if (pantalla == 13) {
      dibujarBoton(resize.valorX(60), resize.valorX(180), resize.valorY(500), resize.valorY(525), 16); 
      dibujarBoton(resize.valorX(340), resize.valorX(460), resize.valorY(500), resize.valorY(525), 10);
      dibujarBoton(resize.valorX(600), resize.valorX(720), resize.valorY(500), resize.valorY(525), 10);
    } else if (pantalla == 14) {
      dibujarBoton(resize.valorX(30), resize.valorX(220), resize.valorY(500), resize.valorY(525), 15); 
      dibujarBoton(resize.valorX(545), resize.valorX(755), resize.valorY(500), resize.valorY(525), 16);
    } else if (pantalla == 15) {
      dibujarBoton(resize.valorX(295), resize.valorX(450), resize.valorY(550), resize.valorY(570), 0);
    } else if (pantalla == 16) {
      dibujarBoton(resize.valorX(295), resize.valorX(450), resize.valorY(550), resize.valorY(570), 0);
    } else if (pantalla == 17) {
      dibujarBoton(resize.valorX(340), resize.valorX(460), resize.valorY(500), resize.valorY(525), 15); 
      dibujarBoton(resize.valorX(295), resize.valorX(450), resize.valorY(550), resize.valorY(570), 16);
    }
  }
}
