size(640,480);
colorMode(RGB,255);

fill(35,35,70);
rect(0,0,640,480);

fill(255,255,255);

stroke(255,255,255);
line(508,85,492,179);
line(485,190,440,210);
line(430,210,385,188);
line(375,180,315,110);
line(430,220,353,365);
line(375,190,290,260);
line(278,263,220,267);
line(290,270,345,365);
line(208,269,115,316);
line(344,373,260,398);
line(250,396,220,373);
line(208,371,145,383);

noStroke();
ellipse(510,80,5,5);
ellipse(490,185,5,5);
ellipse(435,215,5,5);
ellipse(380,185,5,5);
ellipse(310,105,5,5);
ellipse(350,370,5,5);
ellipse(285,265,5,5);
ellipse(215,268,5,5);
ellipse(215,370,5,5);
ellipse(255,400,5,5);
ellipse(140,385,5,5);
ellipse(110,320,5,5);

for(int i=0; i<10000; i++){ 
  int x = (int)random(640); 
  int y = (int)random(480); 
  
  fill(255,255,255); 
  ellipse(x,y,1,1); 
}
