class pantalla{
  
  float turno = 1;
  int personajeUno;
  int personajeDos;
  boolean  personajej1;
  boolean  personajej2;
  
  pantalla(){
  }
  
void inicio(){
  
  pushMatrix();
  
  background(random(0,100));
  fill(253,232,15);
  triangle(30, 85, 58, 20, 86, 75);
  fill(253,232,15);
  triangle(30, 205, 58, 20, 86, 75);
  
  fill(253,232,15);
  triangle(100, 155, 88, 80, 116, 115);
  fill(253,232,15);
  triangle(100, 275, 88, 80, 116, 115);
  
  
  fill(238,40,24);
  textSize(80);
  text("BATALLAS DE MONDRIAN",150,100);
  frameRate(10);
  fill(255,255,134);
  textSize(60);
  text("Presiona E para comenzar el juego", 350,600);
  
  popMatrix();
  
  if(key == 'e' || key == 'E'){
    pant = 1;
  }
  
}
  
void menu(){
  
  pushMatrix();
  background(255,136,110,120);
  
 {
  fill(37,40,80);
  textSize(100);
  text("Escoge tu jugador", height/2,100);
  textSize(20);
  text("La seleccion es por medio de teclas", height/2,200);
    textSize(20);
  text("y las teclas se muestran debajo del personaje", height/2,250);

}

{
  textSize(30);
  text("Abstracto", 80, 630);
  textSize(15);
  text("Jugador 1: 5", 80, 660);
  text("Jugador 2: z", 80, 675);
}

{
    textSize(30);
  text("Sandia", 320, 625);
  textSize(15);
  text("Jugador 1: 6", 320, 660);
  text("Jugador 2: x", 320, 675);
}

  {
    textSize(30);
  text("Espacial", 605,650);
  textSize(15);
  text("Jugador 1: 7", 605,670);
  text("Jugador 2: c", 605,685);
  }
  
  {
    textSize(30);
  text("Iluminar", 1250, 650);
  textSize(15);
  text("Jugador 1: 8", 1250,680);
  text("Jugador 2: v", 1250,700);
  }
  
  {
  textSize(30);
  text("Pureza", 920, 630);
  textSize(15);
  text("Jugador 1: 9", 920,670);
  text("Jugador 2: b", 920,685);
  }

  popMatrix();
  
  
  //gris
  rect(50, 300, 150, 300);
  fill(255,0,0);
  
  //rojo
  rect(300, 300, 150, 300);
  fill(0,0,255);
  
  //azul
  rect(600, 300, 150, 300);
  fill(255);
  
  //blanco
  rect(900, 300, 150, 300);
  fill(255,255,0);
  
  //amarillo
    rect(1200, 300, 150, 300);
  fill(128,128,128);


  
  if (keyPressed){
  switch(key){
    case '5':
    personajej1= true;
    personajeUno=0;
    break;
    
    case '6':
    personajej1 = true;
    personajeUno=1;
    break;
    
    case '7':
    personajej1= true;
   personajeUno=2;
    break;
    
    case '8':
   personajej1= true;
    personajeUno=3;
    break;
    
    case '9':
    personajej1= true;
    personajeUno=4;
    break;
   
    
    
    case 'z':
    personajej2 = true;
    personajeDos=0;
    break;
    
    case 'x':
   personajej2= true;
    personajeDos=1;
    break;
    
    case 'c':
  personajej2= true;
   personajeDos=2;
    break;
    
    case 'v':
    personajej2= true;
    personajeDos=3;
    break;
    
    case 'b':
   personajej2= true;
    personajeDos=4;
    break;
    
  }
  }
  
  if(personajej1 && personajej2){
    pant = 2;
  }
  
}

void pelea(){
  
  pushMatrix();
  background(149,200,216);
  fill(10,100,100);
  textSize(20);
  text("VIDA J1", 120,150);
  fill(10,100,200);
  textSize(20);
  fill(10,100,200);
  text("VIDA J2", 520,150);
  fill(10,100,200);
  textSize(25);
  text(j1.vida,200,150);
  fill(10,100,200);
  text(j2.vida,640,150);
  textSize(15);
  text("JUGADOR 1: presiona a para pelear",100,100);
  text("JUGADOR 2: presiona d para pelear",600,100);
  popMatrix();
  
  switch(personajeUno){
    case 0:
    j1.abstracto();
    break;
    
    case 1:
    j1.sandia();
    break;
    
    case 2:
    j1.espacial();
    break;
    
    case 3:
    j1.pureza();
    break;
    
    case 4:
    j1.iluminar();
    break;
   
    
  }
    
    switch(personajeDos){
    case 0:
    j2.abstracto();
    break;
    
    case 1:
    j2.sandia();
    break;
    
    case 2:
    j2.espacial();
    break;
    
    case 3:
    j2.pureza();
    break;
    
    case 4:
    j2.iluminar();
    break;
    
  }
  
 
  if(turno==1){
    fill(203,50,52);
    text("TU TURNO CRACK",100,125);
      if (keyPressed){
        if (key == 'a'){
          j2.vida= j2.vida - j1.ataque;
          turno = 2;
        }
      }
    }
  
  
    if (turno==2){
     fill(203,50,52);
     text("TU TURNO CRACK",600,125);
      if (keyPressed){
        if(key == 'd'){
          j1.vida= j1.vida - j2.ataque;
          turno = 1;
        }
      }
    }
    
  if(j1.vida == 0 || j2.vida == 0){
    pant = 3;
  }
  
}

void reset(){
  
  pushMatrix();
  background(76,81,109);

  textSize(25);  
  fill(255,193,34);
  text("OPRIME ENTER PARA REINICIAR CRACK",700,700);
  textSize(70);
  text("JUEGO TERMINADO ", 200,100);
  if(j1.vida > 0){
    text("GANASTE UN DOLAR IMAGINARIO",200,200);
  }if(j2.vida > 0){
    text("GANASTE UN DOLAR IMAGINARIO",200,200);
  }

fill(133,187,101);
rect(200,300,400,250);
fill(0);
textSize(45);
text("DOLLAR",260,350);
textSize(55);
text("¢1",360,460);
  
  popMatrix();
  
  if(key == ENTER){
    pant = 0;
    turno = 1;
    j1.vida = 100;
    j2.vida = 100;
    personajej1 = false;
    personajej2= false;
    
  }

  
}
  
}
