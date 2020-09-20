import ddf.minim.*;
Minim minim;
AudioPlayer song;
int angle = 0;
PImage pictureOfRecord;
 void setup(){
   size(600,600);
minim = new Minim(this);
pictureOfRecord = loadImage("record.png");
pictureOfRecord.resize(height,width);
 }
 void draw(){
   rotateImage(pictureOfRecord, angle);
  image(pictureOfRecord, 10 , 10); 
  if(mousePressed){
  angle +=1;
  song = minim.loadFile("");
  }
 }

 void rotateImage(PImage image, int amounToRotate){
  translate(width/2, height/2);
  rotate(amounToRotate*TWO_PI/360);
  translate(-image.width/2,-image.height/2);
 }
