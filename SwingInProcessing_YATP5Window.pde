import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

String actionCommand;
boolean inStopMode;


YATP5Window yatP5Window;

ControlWindow controlWindow;


int x=0;
int y=0;
int w=0;


int r=0;
int g=0;
int b=0;

void setup(){

size(640,480);
colorMode(HSB, 360,100,100);
background(0,0,0);
frameRate(30);


 String[] args = {"Child Window"};


 yatP5Window = new YATP5Window();


 PApplet.runSketch(args, yatP5Window);


 controlWindow = new ControlWindow(this);
 inStopMode = true;


}

void draw(){
 fill(0,0,0,60);
 noStroke();
 rect(0, 0, 500, 500);

}

void mousePressed(){
 x = mouseX;
 y = mouseY;
 r =(int)random(255) +100;
 g =(int)random(255) +100;
 b =(int)random(255) +100;
 w =(int)random(255);

 noStroke();
 fill(r,g,b);
 ellipse(x,y,w,w);
}

void eventsCalledFromControlWindow(){

 if(actionCommand.equals("boundButton_Pushed"))
   inStopMode = false;
 else if(actionCommand.equals("stopButton_Pushed"))
   inStopMode = true;
}

class YATP5Window extends PApplet{

int xPos, yPos; 
int xPosdirection = 1;
int xPosspeed = 5;
int yPosdirection =1;
int yPosspeed = 5;
color c;

 YATP5Window(){

   super();

 }

 @Override
 public void settings(){

   this.size(640, 480);
 }

 @Override
 void setup(){

   this.colorMode(RGB, 255);
   this.background(0, 0, 0);
   this.frameRate(10);
   inStopMode = true;
   c = color(random(360), 80, 100, 100);

 }

 @Override
 void draw(){


   this.fill(0, 0, 0, 0);
   this.rect(0, 0, this.width, this.height);


   this.fill((int)random(255),(int)random(255),(int)random(255));
   this.rect(this.xPos, this.yPos, 50, 50);
   this.noStroke();


   if(!inStopMode){
    this.xPos = xPos + xPosdirection * xPosspeed;
    this.yPos = yPos + yPosdirection * yPosspeed;

     if(xPos > width){
   xPosdirection = -1;
   yPosdirection = -1;

   }
 if(xPos < 0){
   xPosdirection = +1;
   xPosspeed += 3;

 }
 if (yPos>height){
   yPosdirection = -1;
   yPosspeed += 3;
 }
 if(yPos<0){
   yPosdirection = 1; 
   yPosspeed += 3;
}



   }
 }
}
