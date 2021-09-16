class DiceCup {
  int diceAmount = 0;
  Die[] dices = new Die[100];
  DiceCup() {
  }
  void addDie(Die die) {
    diceAmount++;
    dices[diceAmount] = die;
  }
  void removeDie(){
    dices[diceAmount] = null;
    diceAmount--;
  }
  void sortDices(){
    for(int i = diceAmount; i > 0; i--) {
      for(int e = diceAmount; e > 0; e--){
        if(dices[i].value >= dices[e].value){
          Die temp = dices[i];
          dices[i] = dices[e];
          dices[e] = temp;
        }
      }
    }
  }
  void shake() {
    for(int i = diceAmount; i > 0; i--) {
      dices[i].roll();
      println(dices[i].value);
    }
    sortDices();
  }
  void draw(int _xPos, int _yPos, int _dieSize) {
    background(125);
    int xPos = _xPos;
    int yPos = _yPos;
    int dieSize = _dieSize;
    for(int i = 1; i <= diceAmount; i++) {
      //yPos = _yPos;
      if(dices[i+1] != null){
        if(dices[i].value == dices[i+1].value){
          dices[i].draw(xPos, yPos, dieSize);
          yPos = Math.round(yPos + dieSize * 1.5);
        }else{
          dices[i].draw(xPos, yPos, dieSize);
          xPos = Math.round(xPos + dieSize * 1.5);
          yPos = _yPos;
        }
      }
      dices[i].draw(xPos, yPos, dieSize);
    }
  }
}
