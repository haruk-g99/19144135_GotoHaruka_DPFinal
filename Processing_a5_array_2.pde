int xArray[]=new int[100]; //xArray box *100
int yArray[]=new int[100];
int xspeed[]=new int[100];

int xsize[]=new int[100];

void setup(){
  size(640,480);
  colorMode(RGB,255);
  background(255,255,255);
  frameRate(10);
  
  for(int i=0;i<100;i++){
    xArray[i]=(int)random(640);
    yArray[i]=(int)random(480);
    xsize[i]=(int)random(15)+5;
    
  }
}

void draw(){
  noStroke();
  fill(255,255,255);
  rect(0,0,width,height);
  
  noStroke();
  fill(100,100,100,50);
  for(int i=0;i<100;i++){
    ellipse(xArray[i],yArray[i],xsize[i],xsize[i]);
    
    xsize[i]++;
  }
}
    
    
