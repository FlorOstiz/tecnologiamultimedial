class Fondos {
  Textos textos;
  Resize resize;
  PImage [] pantalla = new PImage[13];
  PImage inicio, final1, final2, presentacion, creditos, cursor ;


  Fondos() {
    textos = new Textos();
    resize = new Resize();
    inicio = loadImage("Inicio.png");
    presentacion = loadImage("presentacion.png");
    final1 = loadImage("final1.png");
    final2 = loadImage("final2.png");
    creditos = loadImage("creditos.png");


    for (int i= 1; i<pantalla.length; i++) {
      pantalla[i] = loadImage("Pantalla"+i+".png");
    }
  }
  void Pinicio() {
    image(inicio, 0, 0, width, height);
  }
  void Presentacion() {
    image(presentacion, 0, 0, width, height);
    textos.Presentacion(resize.valorX(100), resize.valorY(400), resize.valorX(100), resize.valorY(25), "Iniciar", resize.valorX(150), resize.valorY(403));
    textos.Presentacion(resize.valorX(650), resize.valorY(400), resize.valorX(100), resize.valorY(25), "Créditos", resize.valorX(700), resize.valorY(403));
  }
  void Pcreditos() {
    image(creditos, 0, 0, width, height);
    textos.Creditos();
  }
  void P1() {
    image(pantalla[1], 0, 0, width, height); 
    textos.Relato("Roja decide ir a lo de su abuelita a llevarle un canasto con galletas y el libro de recetas.\nEn el camino se encuentra con un dulce conejito al cual decide ayudar porque tiene una\n astilla clavada.\nEl conejito en agradecimiento le pregunta si desea que la acompañe.", resize.valorX(20), resize.valorY(70));
    textos.Costado(resize.valorX(30), resize.valorY(500), resize.valorX(190), resize.valorY(25), "Dejar que te acompañe", resize.valorX(123), resize.valorY(503));
    textos.Costado(resize.valorX(545), resize.valorY(500), resize.valorX(210), resize.valorY(25), "No dejar que te acompañe", resize.valorX(650), resize.valorY(503));
  }
  void P2() {
    image(pantalla[2], 0, 0, width, height);
    textos.Relato("¡OH, NO! Resulto ser, que el dulce conejo, no era tan dulce. Roja es emboscada por otros\nconejos y le roban su canasto. Roja del susto se hecha a correr. ", resize.valorX(20), resize.valorY(45));
    textos.Centrado("Correr", resize.valorX(370), resize.valorY(510));
  }
  void P3() {
    image(pantalla[3], 0, 0, width, height);
    textos.Relato("Después de que Roja se logra calmar de la emboscada, enfurecida decide ir en busca del\n conejo. ", resize.valorX(20), resize.valorY(45));
    textos.Centrado("Buscar al conejo", resize.valorX(330), resize.valorY(510));
  }
  void P4() {
    image(pantalla[4], 0, 0, width, height);
    textos.Relato("En búsqueda del conejo se encuentra con un leñador que al verla enojada le pregunta\nque le sucede y roja decide contarle lo sucedido. Éste al escuchar el relato le decide\n ayudar, Roja le agradece y se adentran en el bosque en busca del conejo.  ", resize.valorX(20), resize.valorY(55));
    textos.Centrado("Aceptar ayuda", resize.valorX(340), resize.valorY(510));
  }
  void P5() {
    image(pantalla[5], 0, 0, width, height);
    textos.Relato("Dentro del bosque se encuentran dos caminos. Tendrán que decidir si ir juntos lo cual\npodrían tardarse más y se haría tarde, y Roja no quiere preocupar a la abuelita o\nsepararse para encontrarlo más rápido, ya que se adentraba la noche.", resize.valorX(20), resize.valorY(55));
    textos.Costado(resize.valorX(30), resize.valorY(500), resize.valorX(190), resize.valorY(25), "separados", resize.valorX(123), resize.valorY(503));
    textos.Costado(resize.valorX(545), resize.valorY(500), resize.valorX(210), resize.valorY(25), "juntos", resize.valorX(650), resize.valorY(503));
  }
  void P6() {
    image(pantalla[6], 0, 0, width, height);
    textos.Relato("Se encuentra con un lobo triste, se acerca a pesar de los prejuicios que hay hacia ellos y se\nencuentra con un lobo que le fue robado el libro de recetas de su tan querida abuelita\npor el mismo conejito. Entonces el lobo decide ofrecerle su ayuda. A pesar de que Roja\nya fue traicionada por aceptar la ayuda ve que sus intenciones son verdaderas y acepta.  ", resize.valorX(20), resize.valorY(65));
    textos.Centrado("Aceptar ayuda del lobo", resize.valorX(305), resize.valorY(510));
  }
  void P7() {
    image(pantalla[7], 0, 0, width, height);
    textos.Relato("Deciden que ir juntos es la mejor opción. A los pocos minutos dan con una fábrica y\nse adentran. Allí se encuentran al conejo, de sorpresa el leñador que acompaña a Roja\nle dice que le aterran los conejos y sale corriendo. Tal vez le tendría que haber avisado\nde quien se trataba. El conejo al ver esto se hecha a reír, luego le cuenta cuál es su plan\nmaligno de extinguir todas las recetas de galletas y ser el único que pueda fabricarlas;\nluego le da a Roja la opción de recuperar el libro , ya que fue tan lista para encontrarlo\nsolo sí, responde bien tres acertijos. ", resize.valorX(20), resize.valorY(100));
    textos.Costado(resize.valorX(30), resize.valorY(500), resize.valorX(190), resize.valorY(25), "No enfrentar conejo", resize.valorX(123), resize.valorY(503));
    textos.Costado(resize.valorX(545), resize.valorY(500), resize.valorX(210), resize.valorY(25), "Enfrentar conejo", resize.valorX(650), resize.valorY(503));
  }
  void P8() {
    image(pantalla[8], 0, 0, width, height);
    textos.Relato("El conejo se rie y le dice a Roja que la respuesta no era esa y prende fuego\nel libro de recetas delante de sus ojos. Roja decide marcharse a lo de su abuela llorando", resize.valorX(20), resize.valorY(45));
    textos.Centrado("Ir a lo de la abuelita", resize.valorX(315), resize.valorY(510));
  }
  void P9() {
    image(pantalla[9], 0, 0, width, height);
    textos.Relato("El primer acertijo que le da a Roja dice “Cuanto más caliente, más fresco y crujiente.\n¿Qué es?” ", 20, 45);
    textos.Acertijos(resize.valorX(60), resize.valorY(500), resize.valorX(120), resize.valorY(25), "Pan", resize.valorX(105), resize.valorY(510));
    textos.Acertijos(resize.valorX(340), resize.valorY(500), resize.valorX(120), resize.valorY(25), "Churro", resize.valorX(375), resize.valorY(510));
    textos.Acertijos(resize.valorX(600), resize.valorY(500), resize.valorX(120), resize.valorY(25), "Café", resize.valorX(643), resize.valorY(510));
  }
  void P10() {
    image(pantalla[10], 0, 0, width, height);
    textos.Relato("El conejo frunce el ceño y dice que lamentablemente es correcto y prosigue con el\nsegundo acertijo que dice “Un pescador mete 3 peces en el cubo, pero uno de los\npeces muere. ¿Cuántos peces quedan?” ", resize.valorX(20), resize.valorY(55));
    textos.Acertijos(resize.valorX(60), resize.valorY(500), resize.valorX(120), resize.valorY(25), "Dos", resize.valorX(105), resize.valorY(510));
    textos.Acertijos(resize.valorX(600), resize.valorY(500), resize.valorX(120), resize.valorY(25), "Tres", resize.valorX(643), resize.valorY(510));
  }
  void P11() {
    image(pantalla[11], 0, 0, width, height);
    textos.Relato("El conejito enojado te dice que es correcto ya que siguen quedando 3, porque el pez\nmuerto sigue en el cubo. El próximo acertijo que le da el conejito a Roja dice así:\n“En la granja de Tobías hay 4 vacas, 2 conejos, 6 patos, 4 gatos, la mujer y los dos hijos\nde Tobías. ¿Cuántas patas hay?” ", resize.valorX(20), resize.valorY(65));
    textos.Acertijos(resize.valorX(60), resize.valorY(500), resize.valorX(120), resize.valorY(25), "52", resize.valorX(110), resize.valorY(510));
    textos.Acertijos(resize.valorX(340), resize.valorY(500), resize.valorX(120), resize.valorY(25), "56", resize.valorX(392), resize.valorY(510));
    textos.Acertijos(resize.valorX(600), resize.valorY(500), resize.valorX(120), resize.valorY(25), "58", resize.valorX(650), resize.valorY(510));
  }
  void P12() {
    image(pantalla[12], 0, 0, width, height);
    textos.Relato("Al encontrarse con el conejito, cuenta que todo esto fue para montar su propia y única\nfábrica que haga galletas. El lobo enfurecido lo enfrenta y decide atracarlo, pero el conejo\nmuy inteligente le dice que si lo ataca quemara los dos libros, pero sino lo ataca le da la\noportunidad de salvar uno. El lobo se da cuenta que atacarlo ya no serviría de nada ya\nque puede salvar uno de los libros, pero... ¿cuál de los dos será? ", resize.valorX(20), resize.valorY(70));
    textos.Costado(resize.valorX(30), resize.valorY(500), resize.valorX(190), resize.valorY(25), "Libro del Lobo", resize.valorX(123), resize.valorY(503));
    textos.Costado(resize.valorX(545), resize.valorY(500), resize.valorX(210), resize.valorY(25), "Libro de Roja", resize.valorX(650), resize.valorY(503));
  }
  void Pfinal1() {
    image(final1, 0, 0, width, height);
    textos.Relato("Roja lamentablemente llega a la casa de su abuelita sin la canasta con las galletas y el\nlibro de recetas, tal vez tuvo que haber pensado bien a la hora de actuar. ", resize.valorX(20), resize.valorY(45));
    textos.Costado(resize.valorX(295), resize.valorY(550), resize.valorX(155), resize.valorY(20), "Volver a Comenzar", resize.valorX(373), resize.valorY(555));
  }
  void Pfinal2() {
    image(final2, 0, 0, width, height);
    textos.Relato("¡Lo logró! Roja llega sana y con la canasta con las galletas y el libro de recetas a lo de su\nabuela. Podría haber sido mucho peor, que bueno que no paso eso con ella. ", resize.valorX(20), resize.valorY(45));
    textos.Costado(resize.valorX(295), resize.valorY(550), resize.valorX(155), resize.valorY(20), "Volver a Comenzar", resize.valorX(373), resize.valorY(555));
  }
}
