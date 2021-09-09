int timer = 0;
color bg = (0);
color red = color(255,0,0);
color yellow = color(255,255,0);
color green = color(0,255,0);

void setup(){
    size(200,600);
    background(bg);
    frameRate(1);
    ellipseMode(CORNER);
    resetColors();
    fill(red);
    ellipse(0,0,height/3,width);
}

void draw(){
    if(timer <= 2){
        resetColors();
        fill(red);
        ellipse(0,0,height/3,width);
    }else if(timer <= 4){
        resetColors();
        fill(yellow);
        ellipse(0,height/3,height/3,width);
    }else if(timer <= 6){
        resetColors();
        fill(green);
        ellipse(0,height/3*2,height/3,width);
    }else if(timer <= 8){
        resetColors();
        fill(yellow);
        ellipse(0,height/3,height/3,width);
    }else{
        timer = 0;
    }
    timer++;
}

void resetColors(){
    fill(155);
    ellipse(0,0,height/3,width);
    ellipse(0,height/3,height/3,width);
    ellipse(0,height/3*2,height/3,width);
}