class Objetivos{
  float maxVel = 4;
  PVector posicion, velocidad;
  int tam = 100;
  float x, y;
  PImage pure;

  
  Objetivos(){
   pure = loadImage ("pure.png");
   velocidad = new PVector(random(-maxVel, maxVel), random(-maxVel, maxVel));
    
    if(abs(velocidad.x) > abs(velocidad.y)){
      if(velocidad.x > 0){
        x = 0;
    }else{
        x = width;
      }
      
    }else{
      if(velocidad.y > 0){
        y = 0;
      
    }else{
        y = height;
      }
    }
    
    posicion = new PVector(x, y);
  }
  
  void draw(){
    image(pure, posicion.x, posicion.y, tam, tam);
    posicion.add(velocidad);  
  }
  
  
  
}
