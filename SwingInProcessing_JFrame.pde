import java.awt.*;
import java.awt.event.*;
import javax.swing.*;


int xPos,yPos;
int w = (int)random(100);
int t = (int)random(5);

int xPosdirection = 1;
int xPosspeed = 5;
int yPosdirection =1;
int yPosspeed = 5;


boolean inStopMode;
boolean inBoundMode;

Frame frame;
void setup(){
 size(640,480);
 colorMode(HSB, 360,100,100);
 background(0,0,0);
 frameRate(30);


 frame = new JFrame();
 frame.setSize(180,120);
 frame.setVisible(true);

 ControlWindow controlWindow = new ControlWindow(this);
 xPos = 0;
 yPos = 0;
 inStopMode = true;

 xPos = 0;
 yPos = 0;
 inBoundMode = true;



}

void draw(){
 fill(0,0,0,0);
 rect(0, 0, width, height);

 fill((int)random(255),(int)random(255),(int)random(255));
 rect(xPos, yPos, w, w);
 noStroke();


 if(!inStopMode){

 xPos = xPos + xPosdirection * xPosspeed;
 yPos = yPos + yPosdirection * yPosspeed;


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

void eventsCalledFromControlWindow(String actionCommand){
 if(actionCommand.equals("boundButton_Pushed"))
   inStopMode = false;
 else if(actionCommand.equals("stopButton_Pushed"))
   inStopMode = true;

 if(actionCommand.equals("boundButton_Pushed"))
   inBoundMode = true;
 else if(actionCommand.equals("stopButton_Pushed"))
   inBoundMode = false;   


}




class ControlWindow extends JFrame implements ActionListener{

 JButton stopButton, boundButton;
 JTextField textField;
 JPanel panel;

SwingInProcessing_JFrame parentWindow;

ControlWindow(SwingInProcessing_JFrame parentWindow){
  super("Control Window");

  this.parentWindow = parentWindow;

  this.setSize(320, 240);

   panel = new JPanel();
   panel.setLayout(new BorderLayout());


   stopButton = new JButton("Stop");
   stopButton.setActionCommand("stopButton_Pushed");
   stopButton.addActionListener(this);
   panel.add(stopButton, BorderLayout.SOUTH);


   boundButton = new JButton("Bound");
   boundButton.setActionCommand("boundButton_Pushed");
   boundButton.addActionListener(this);
   panel.add(boundButton, BorderLayout.NORTH);


   textField = new JTextField("Control Panel Text Field");
   panel.add(textField, BorderLayout.CENTER);


    this.getContentPane().add(panel);
    this.setVisible(true);
 }


  @Override
 public void actionPerformed(ActionEvent e){
    String actionCommand = e.getActionCommand();

    textField.setText(actionCommand);

     parentWindow.eventsCalledFromControlWindow(actionCommand);
 }
}
