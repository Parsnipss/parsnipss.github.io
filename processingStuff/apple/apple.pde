void setup(){
size(800,1200);
background(0);
}
int x = 0;
int speed = 2;
int value = 0;
int acc = 0;
int s = 0;
int fc = 0;

void mousePressed(){
if (mouseX > 140 && mouseX < 640 && mouseY > 55 && mouseY < 115){
background(0);
s = 0;
}

}

void draw(){
stroke(4);
fill(90);
if (mouseX > 140 && mouseX < 640 && mouseY > 55 && mouseY < 115){
fill(255,55,0);
}
rect(140, 55, 500, 60, 20);
fill(255);
textSize(40);
text("Click this button to reset", 150, 100); 
fill(random(200),random(255),random(255));
stroke(4);
ellipse(mouseX, mouseY, s, s); 
if (acc %15 == 0 && s < 300){
s ++;
}
acc ++;

}