PImage img;
 void setup(){
   size(640,480);
   img=loadImage("Lunch.jpg");
 }
 
 void draw(){
   background(0);
   noTint();
   image(img,0,0);
   tint(31,127,255);
   image(img,width/2,0);
 }
