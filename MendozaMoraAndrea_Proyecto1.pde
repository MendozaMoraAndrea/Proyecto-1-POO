pantalla p;
personaje j1;
personaje j2;

int pant = 0;

void setup(){
  
  size(1450,900);
  j1 = new personaje(20,100,300,250);
  j2 = new personaje(20,100,700,250);
  p = new pantalla();

  
}

void draw(){
  
  switch(pant){
    
    case 0:    
    p.inicio();   
    break;
    
    case 1:    
    p.menu();    
    break;
    
    case 2:    
    p.pelea();   
    break;
    
    case 3:    
    p.reset();    
    break;
    
  }
  
}
