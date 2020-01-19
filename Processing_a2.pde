size(640,480);
colorMode(RGB,255);
background(0,0,0);

for(int i=0;i<10000;i++){
  int x=(int)random(640);
  int y=(int)random(480);
  int w=(int)random(10);
  
  int r=(int)random(255);
  int g=(int)random(255);
  int b=(int)random(255);
  
  if(x<210){
    fill(255,g,b);
  }
  else if(x>=210 && x<420){
    fill(r,255,b);
  }
  else if(x>=420){
    fill(r,g,255);
  }
  noStroke();
  ellipse(x,y,w,w);
}
