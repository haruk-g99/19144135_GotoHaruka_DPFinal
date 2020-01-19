int a=0;
int b=0;
int c=0;
int d=0;
int e=0;
int f=0;
int g=0;
int h=0;
int i=0;
int j=0;
int k=0;
int l=0;

void setup(){
  size(480,480);
  colorMode(RGB,255);
  background(255,255,255);
  frameRate(10);
  noStroke();
}

void draw(){
  fill(480,480);
  noStroke();
  rect(0,0,width,height);
  
  fill(255,255,0);
  ellipse(240,240,60,60);
  a=(int)random(255);
  b=(int)random(255);
  c=(int)random(255);
  d=(int)random(255);
  e=(int)random(255);
  f=(int)random(255);
  g=(int)random(255);
  h=(int)random(255);
  i=(int)random(255);
  j=(int)random(255);
  k=(int)random(255);
  l=(int)random(255);
  
  fill(a,b,c);
  ellipse(240,120,160,160);
  fill(d,e,f);
  ellipse(240,360,160,160);
  fill(g,h,i);
  ellipse(120,240,160,160);
  fill(j,k,l);
  ellipse(360,240,160,160);
}
