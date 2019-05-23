/**
  *Bouncing Ball Program
  *Author:Gavin Ceballos
  *Version: 0.521
  *@param:
*/

int startX=300;
int startY=300;
int bR = 50;
int initialG = 200;
float bVX = random(1,100);
float bXY = random(1,100);

boolean start = true;
boolean rightX = true;
boolean downY = true;
boolean falling = true;

void setup(){
  size(600,700);
}

void draw(){
  background(0,0,0);
  ellipse(startX, startY, bR, bR);
  
  if(startX >= (600-(bR/2))){
    rightX = false;
    fill(random(0,255),random(0,255),random(0,255));
  }
  if(startX <= (bR/2)){
    rightX = true;
    fill(random(0,255),random(0,255),random(0,255));
  }
  if(startY >= (700-(bR/2))){
    downY = false;
    fill(random(0,255),random(0,255),random(0,255));
  }
  if(startY <= (bR/2)){
    downY = true;
    falling = false;
    fill(random(0,255),random(0,255),random(0,255));
  }
  if(rightX == true && downY == true){
    startX+=bVX;
    startY+=bXY;
  }
  if(rightX == true && downY == false){
    startX+=bVX;
    startY-=bXY;
  }
  if(rightX == false && downY == true){
    startX-=bVX;
    startY+=bXY;
  }
  if(rightX == false && downY == false){
    startX-=bVX;
    startY-=bXY;
  }
}
