class Die {
  int value = 1;
  color colorDie;
  color colorEye;

  Die() {
    colorDie = color(255);
    colorEye = color(0);
  }
  void roll() {
    value = Math.round(random(1, 6));
    if (value % 2 == 0) {
      colorDie = color(255);
      colorEye = color(0);
    } else {
      colorDie = color(0);
      colorEye = color(255);
    }
  }
  void draw(int _xPos, int _yPos, int _size) {
    float eyeSize = _size * 0.15;
    noStroke();
    fill(colorDie);
    rectMode(CENTER);
    ellipseMode(CENTER);
    rect(_xPos, _yPos, _size, _size);
    fill(colorEye);
    if ((value == 1) || (value == 3) || (value == 5)) {
      ellipse(_xPos, _yPos, eyeSize, eyeSize);
    }
    if ((value == 2) || (value == 3) || (value == 4) ||(value == 5) || (value == 6)) {
      ellipse(_xPos-_size*0.35, _yPos-_size*0.35, eyeSize, eyeSize);
      ellipse(_xPos+_size*0.35, _yPos+_size*0.35, eyeSize, eyeSize);
    }
    if ((value == 4) ||(value == 5) || (value == 6)) {
      ellipse(_xPos-_size*0.35, _yPos+_size*0.35, eyeSize, eyeSize);
      ellipse(_xPos+_size*0.35, _yPos-_size*0.35, eyeSize, eyeSize);
    }
    if ((value == 6)) {
      ellipse(_xPos+_size*0.35, _yPos, eyeSize, eyeSize);
      ellipse(_xPos-_size*0.35, _yPos, eyeSize, eyeSize);
    }
  }
}
