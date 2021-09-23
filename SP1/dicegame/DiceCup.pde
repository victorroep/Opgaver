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
      if(dices[i+1] != null){ //Hvis der er en terning efter den nuværende der bliver tjekket
        if(dices[i].value == dices[i+1].value){ //Hvis den nuværende ternings værdi er ens med den næste terning
          dices[i].draw(xPos, yPos, dieSize); //Tegn den nuværende terning
          yPos = Math.round(yPos + dieSize * 1.5); //Forøg y-positionen, så næste terning tegnes korrekt
        }else{
          dices[i].draw(xPos, yPos, dieSize);
          xPos = Math.round(xPos + dieSize * 1.5);
          yPos = _yPos; //Reset y-positionen, da der ikke er flere terninger af samme værdi
        }
      }
      dices[i].draw(xPos, yPos, dieSize);
    }
  }
}
