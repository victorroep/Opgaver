DiceCup cup = new DiceCup();

void setup() {
  size(1280, 720);
  background(125);
  
  for(int i = 0; i < 10; i++){
    cup.addDie(new Die());
  }
  
  cup.shake();
  cup.draw(int(width*0.4),height/5,30);
}

void draw() {
  
}

void mousePressed(){
  cup.shake();
  cup.draw(int(width*0.4),height/5,30);
}
