void MousePressed() {
  boolean botAdelante = mouseX>botX && mouseX<botX+botTam &&
    mouseY>botY && mouseY<botY+botTam/2;
  boolean botAtras= mouseX>0 && mouseX<botTam && 
    mouseY>botY && mouseY<botY+botTam/2;

  if (botAdelante) {
    pantalla++;
  }
  if (botAtras) {
    pantalla--;
     } else if (pantalla == 0 ) {
       inicioMousePressed();
  } else if (pantalla == 1 ) {
    PresentacionMousePressed();
  } else if (pantalla == 2) {
    CreditosMousePressed();
  } else if (pantalla == 3) {
    Corto1MousePressed();
 

//} else if (pantalla ==6) {

  
  } else if (pantalla == 9) {
    FinMousePressed();
  }
}
