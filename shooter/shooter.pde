int CantObjetivos = 5;
PImage mira;
Objetivos[] obj;


void setup(){
  size(800, 800);
  mira = loadImage("mira.png");
  noCursor();
  
  obj = new Objetivos[CantObjetivos];
  for(int i = 0; i < CantObjetivos; i++){
    obj[i] = new Objetivos();
  }
}

void draw(){
  background(200);
    
  for(int i = 0; i < CantObjetivos; i++){
    obj[i].draw();
    if(obj[i].posicion.x - obj[i].tam/2 > width ||  obj[i].posicion.y - obj[i].tam/2 > height ||  
       obj[i].posicion.x + obj[i].tam/2 < 0 || obj[i].posicion.y + obj[i].tam/2 < 0){
       obj[i] = new Objetivos();
     }
  }
  mira();
}

void mira(){
  mira.resize(60,60);
  image(mira, mouseX,mouseY);
  smooth();
     
}


void mousePressed(){ //esta es la parte que importa ah
    PVector mousePos = new PVector(mouseX, mouseY);
    for(int i = 0; i < CantObjetivos; i++){
      if(obj[i].posicion.dist(mousePos) <= obj[i].tam/2){
        obj[i] = new Objetivos(); 
      }
    }
}
