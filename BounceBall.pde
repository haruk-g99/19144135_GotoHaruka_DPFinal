Ball ballArray[]=new Ball[30];

int a;

void setup(){
  size(640,480);
  colorMode(RGB,255);
  background(0,0,0);
  frameRate(10);
  
  for(int i=0;i<30;i++){
    ballArray[i]=new Ball();
  }
}

void draw(){
  drawRefreshRect(0,0,0,60);
  for(int i=0;i<30;i++){
    ballArray[i].updatePosition();
    ballArray[i].drawBall();
  }
 
   
}

void drawRefreshRect(int r,int g,int b,int alpha){
  noStroke();
  fill(r,g,b,alpha);
  rect(0,0,width,height);
}
