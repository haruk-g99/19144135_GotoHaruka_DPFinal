PImage myImage;

class Snowflake { 
  float x; 
  float y; 
  float s; 
  color c; 
  float dy; 
        Snowflake() { 
        x = random(width); 
        y = random(height);
        dy = random(0, 2); 
        s =  8 * dy / 4.0; 
        c = #ffffff; 
        }
       void drop() { 
        y += dy;
        if (y > height) y = 0;
        noStroke(); 
        fill(c);
        ellipse(x, y, s, s);
        
        }
        
    }
}
Snowflake[] sf = new Snowflake[5000]; 




void setup(){
  size (600,480);
  noCursor();
  for (int i = 0; i < 2000; i++) { 
  sf[i] = new Snowflake();
  }
  
  myImage=loadImage("Minamiosawa.jpg");
}


void draw() {
   for(int i=0;i<10;i++){
     image(myImage,0,0);
   }
    for(int i = 0; i < 2000; i++) {
    sf[i].drop();
}
}
