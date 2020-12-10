class Conejo {
  int  px, py, px2, py2, px3, py3, px4, py4, px5, py5, px6, py6, px7, py7, tam;
  PImage conejo, conejo2, conejo3, conejo4, conejo5, conejo6, conejo7;
  boolean seMueve = true;
  int dirx, dirx2, diry3, diry4, dirx5, dirx6, diry7;
  color b[] = new color[1];
  Resize resize;
  Caperusita roja;

  Conejo() {
    resize = new Resize();
    conejo = loadImage("conejoazul1.png");  // Conejo 1
    conejo2 = loadImage("conejoazul1.png");
    conejo3 = loadImage("conejoazul1.png");
    conejo4 = loadImage("conejoazul1.png");
    conejo5 = loadImage("conejoazul1.png");
    conejo6 = loadImage("conejoazul1.png");
    conejo7 = loadImage("conejoazul1.png");
    seMueve = true;
    px=240; // Posicion x inicial del conejo 1
    py=100; // Posicion y inicial del conejo 1
    px2 = 0;
    py2 = 250;
    px3 = 50;
    py3 = 300;
    px4 = 350;
    py4 = 150;
    px5 = 450;
    py5 = 350;
    px6 = 550;
    py6 = 500;
    px7 = 600;
    py7 = 100;
    tam = 50;
    dirx = 0; // Esto creo que es la velocidad a la que se va moviendo el conejo 1(?
    dirx2 = 0;
    diry3 = 0;
    diry4 = 0;
    dirx5 = 0;
    diry7 = 0;
    b[0] = (#c60202);// rojo de caperusita.
  }

  void dibujar() {

    //println(mouseX, mouseY);

    if (px <= 200 || px >= 340) { // Si la posicion del conejo esta entre esos limites, entonces volver a conejo 1 a la posicion incial
      px = 240;
      dirx = 0;
    }

    if (px2 <= 0 || px2 >= 330) { // Si la posicion del conejo esta entre esos limites, entonces volver a conejo 2 a la posicion incial
      px2 = 0;
      dirx2 = 0;
    }
    if (py3 <= 300 || py3 >= 500) { // Si la posicion del conejo esta entre esos limites, entonces volver a conejo 2 a la posicion incial
      py3 = 300;
      diry3 = 0;
    }
    if (py4 <= 150 || py4 >= 400) { // Si la posicion del conejo esta entre esos limites, entonces volver a conejo 2 a la posicion incial
      py4 = 150;
      diry4 = 0;
    }
    if (px5 <= 450 || px5 >= 650) { // Si la posicion del conejo esta entre esos limites, entonces volver a conejo 2 a la posicion incial
      px5 = 450;
      dirx5 = 0;
    }
    if (px6 <= 300 || px6 >= 500) { // Si la posicion del conejo esta entre esos limites, entonces volver a conejo 2 a la posicion incial
      px6 = 300;
      dirx6 = 0;
    }
    if (py7 <= 100 || py7 >= 250) { // Si la posicion del conejo esta entre esos limites, entonces volver a conejo 2 a la posicion incial
      py7 = 100;
      diry7 = 0;
    }

    if (seMueve) { 
      px = px + dirx; // Se calcula la distancia que se va a mover conejo 1 y lo dibuja
      px = px + 1;
      image(conejo, resize.valorX(px), resize.valorY(py), resize.valorX(tam), resize.valorY(tam));

      px2 = px2 + dirx2; // Se calcula la distancia que se va a mover conejo 2 y lo dibuja
      px2 = px2 + 1;
      image(conejo2, resize.valorX(px2), resize.valorY(py2), resize.valorX(tam), resize.valorY(tam));

      py3 = py3 + diry3; // Se calcula la distancia que se va a mover conejo 3 y lo dibuja
      py3 = py3 + 1;
      image(conejo3, resize.valorX(px3), resize.valorY(py3), resize.valorX(tam), resize.valorY(tam));

      py4 = py4 + diry4; // Se calcula la distancia que se va a mover conejo 4 y lo dibuja
      py4 = py4 + 1;
      image(conejo4, resize.valorX(px4), resize.valorY(py4), resize.valorX(tam), resize.valorY(tam));

      px5 = px5 + dirx5; // Se calcula la distancia que se va a mover conejo 5 y lo dibuja
      px5 = px5 + 1;
      image(conejo5, resize.valorX(px5), resize.valorY(py5), resize.valorX(tam), resize.valorY(tam));

      px6 = px6 + dirx6; // Se calcula la distancia que se va a mover conejo 6 y lo dibuja
      px6 = px6 + 1;
      image(conejo6, resize.valorX(px6), resize.valorY(py6), resize.valorX(tam), resize.valorY(tam));

      py7 = py7 + diry7; // Se calcula la distancia que se va a mover conejo 7 y lo dibuja
      py7 = py7 + 1;
      image(conejo7, resize.valorX(px7), resize.valorY(py7), resize.valorX(tam), resize.valorY(tam));
    }

    if (dist(resize.valorX(px), resize.valorY(py), resize.valorX(roja.px), resize.valorY(roja.py)) == 0) { // Pregunta por la distancia entre conejo 1 y caperusita, si es 0, significa que se chocan
      roja.vidas.quitarVidas();
      roja.px = resize.valorX(0);
      roja.py = resize.valorY(50);
    }

    println(dist(px2, py2, roja.px, roja.py));
    if (dist(px2, py2, resize.valorX(roja.px), resize.valorY(roja.py)) == 0) { // Pregunta por la distancia entre conejo 2 y caperusita, si es 0, significa que se chocan
      roja.vidas.quitarVidas();
      roja.px = resize.valorX(0);
      roja.py = resize.valorY(50);
    }
    if (dist(px3, py3, resize.valorX(roja.px), resize.valorY(roja.py)) == 0) { // Pregunta por la distancia entre conejo 3 y caperusita, si es 0, significa que se chocan
      roja.vidas.quitarVidas();
      roja.px = resize.valorX(0);
      roja.py = resize.valorY(50);
    }
    if (dist(px4, py4, resize.valorX(roja.px), resize.valorY(roja.py)) == 0) { // Pregunta por la distancia entre conejo 4 y caperusita, si es 0, significa que se chocan
      roja.vidas.quitarVidas();
      roja.px = resize.valorX(0);
      roja.py = resize.valorY(50);
    }
    if (dist(px5, py5, resize.valorX(roja.px), resize.valorY(roja.py)) == 0) { // Pregunta por la distancia entre conejo 5 y caperusita, si es 0, significa que se chocan
      roja.vidas.quitarVidas();
      roja.px = resize.valorX(0);
      roja.py = resize.valorY(50);
    }
    if (dist(px6, py6, resize.valorX(roja.px), resize.valorY(roja.py)) == 0) { // Pregunta por la distancia entre conejo 5 y caperusita, si es 0, significa que se chocan
      roja.vidas.quitarVidas();
      roja.px = resize.valorX(0);
      roja.py = resize.valorY(50);
    }
    if (dist(px7, py7, resize.valorX(roja.px), resize.valorY(roja.py)) == 0) { // Pregunta por la distancia entre conejo 5 y caperusita, si es 0, significa que se chocan
      roja.vidas.quitarVidas();
      roja.px = resize.valorX(0);
      roja.py = resize.valorY(50);
    }
  }
}
