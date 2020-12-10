class Laberinto {
  Caperusita roja;
  Vidas vidas;
  Resize resize;
  int cant = 16;
  boolean[][] cubo = new boolean[cant][cant];
  int tam;

  Laberinto() {
    roja = new Caperusita();
    vidas = new Vidas();
    resize = new Resize();
    tam = width/cant;
    for (int x=0; x<cant; x++) {
      for (int y=0; y<cant; y++) { 
        cubo[x][y] = false;
      }
    }
  }

  void dibujar() {
    vidas.textolab();
    noStroke();
    cubo[0][2] = true;
    cubo[0][5] = true;
    cubo[0][7] = true;
    cubo[0][8] = true;
    cubo[0][10] = true;
    cubo[1][0] = true;
    cubo[1][3] = true;
    cubo[1][10] = true;
    cubo[2][0] = true;
    cubo[2][1] = true;
    cubo[2][5] = true;
    cubo[2][6] = true;
    cubo[2][7] = true;
    cubo[2][8] = true;
    cubo[2][10] = true;
    cubo[3][3] = true;
    cubo[3][7] = true;
    cubo[4][0] = true;
    cubo[4][1] = true;
    cubo[4][3] = true;
    cubo[4][5] = true;
    cubo[4][6] = true;
    cubo[4][7] = true;
    cubo[4][9] = true;
    cubo[4][10] = true;
    cubo[5][0] = true;
    cubo[5][5] = true;
    cubo[5][9] = true;
    cubo[6][0] = true;
    cubo[6][2] = true;
    cubo[6][3] = true;
    cubo[6][5] = true;
    cubo[6][7] = true;
    cubo[7][8] = true;
    cubo[7][10] = true;
    cubo[8][1] = true;
    cubo[8][3] = true;
    cubo[8][4] = true;
    cubo[8][6] = true;
    cubo[9][1] = true;
    cubo[9][3] = true;
    cubo[9][7] = true;
    cubo[9][8] = true;
    cubo[9][10] = true;
    cubo[10][0] = true;
    cubo[10][3] = true;
    cubo[10][5] = true;
    cubo[10][10] = true;
    cubo[11][0] = true;
    cubo[11][3] = true;
    cubo[11][4] = true;
    cubo[11][7] = true;
    cubo[11][8] = true;
    cubo[11][9] = true;
    cubo[11][10] = true;
    cubo[12][0] = true;
    cubo[12][5] = true;
    cubo[12][9] = true;
    cubo[13][2] = true;
    cubo[13][3] = true;
    cubo[13][7] = true;
    cubo[13][10] = true;
    cubo[14][0] = true;
    cubo[14][3] = true;
    cubo[14][4] = true;
    cubo[14][6] = true;
    cubo[14][7] = true;
    cubo[14][8] = true;
    cubo[14][10] = true;
    cubo[15][0] = true;
    cubo[15][1] = true;
    cubo[15][4] = true;
    cubo[15][7] = true;
    cubo[15][8] = true;


    for (int x=0; x<cant; x++) {
      for (int y=0; y<cant; y++) {
        if (cubo[x][y] == true) {
          fill(0);
        } else {
          fill(200, 0, 0);
        }
        rect(resize.valorX(x*tam), resize.valorY(y*tam+50), resize.valorX(tam), resize.valorY(tam));
      }
    }
  }
}
