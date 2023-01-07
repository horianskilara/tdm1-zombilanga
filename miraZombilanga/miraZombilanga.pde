PImage mira;
void setup(){
  size(600,800);
  //fullScreen();
  fill(200);
  mira = loadImage("mira.png");
  smooth();
  noCursor();
}

void draw(){
  background(200);
  mira.resize(50,50);
  image(mira, mouseX,mouseY);
}
