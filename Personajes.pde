class personaje{
  
  int ataque;
  int vida;
  int x;
  int y;
  
  personaje(int ataque_,int vida_, int x_, int y_){
    ataque=ataque_;
    vida=vida_;
    x=x_;
    y=y_;
  }
  
  void abstracto(){
    pushMatrix();
  rect(50, 300, 150, 300);
  fill(255,0,0);
   
    popMatrix();
  }
  
  void sandia(){
    pushMatrix();  
  rect(300, 300, 150, 300);
  fill(0,0,255);
    popMatrix();
  }
  
  void espacial(){
    pushMatrix();
  rect(600, 300, 150, 300);
  fill(255);
    popMatrix();
  }
  
  void pureza(){
    pushMatrix();
  rect(900, 300, 150, 300);
  fill(255,255,0);
        popMatrix();
  }
  
  void iluminar(){
    pushMatrix();
    rect(1200, 300, 150, 300);
  fill(128,128,128);
    popMatrix();
  }
   
   
}



  void abstractoDos(){
    pushMatrix();
  rect(50, 300, 350, 300);
  fill(255,0,0);
   
    popMatrix();
  }
  
  void sandiaDos(){
    pushMatrix();  
  rect(300, 300, 350, 300);
  fill(0,0,255);
    popMatrix();
  }
  
  void espacialDos(){
    pushMatrix();
  rect(600, 300, 350, 300);
  fill(255);
    popMatrix();
  }
  
  void purezaDos(){
    pushMatrix();
  rect(900, 300, 350, 300);
  fill(255,255,0);
        popMatrix();
  }
  
  void iluminarDos(){
    pushMatrix();
    rect(1200, 300, 350, 300);
  fill(128,128,128);
    popMatrix();
  }
