class Ball{
  int x;
  int y;
  int ballWidth=20;
  int ballHeight=20;
  int xDirection;
  int xSpeed;
  
  
  
  Ball(){
    x=(int)random(width);
    y=(int)random(height);
    
    if(random(2)<1){
      xDirection=1;
    }
    else{
      xDirection=-1;
    }
    
    xSpeed=(int)random(5)+1;
  }
  
  void updatePosition(){
    x +=xSpeed*xDirection;
    if(x>width){
      xDirection=-1;
    }
    else if(x<0){
      xDirection=1;
    }
  }
  
  void drawBall(){
    fill(a,a,a);
    a=(a+1)%256;
    ellipse(x,y,ballWidth,ballHeight);
  }
}
