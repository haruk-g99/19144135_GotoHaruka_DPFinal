int x=0; 
int y=0;

void setup(){
  size(640, 480);
  colorMode(RGB, 255);
  background(0,0,0);
  frameRate(100);
}

void draw(){
  fill(0,0,0,10);
  noStroke(); 
  rect(0, 0, width, height); 
  filter(BLUR);
  
  noStroke(); 
  fill((int)random(255), (int)random(255), (int)random(255)); 
  ellipse(x, y, 40, 40); 
}

void mouseMoved(){ 
  x = mouseX; 
  y = mouseY; 
}
