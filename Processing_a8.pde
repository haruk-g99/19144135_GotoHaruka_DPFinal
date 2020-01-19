import processing.awt.PSurfaceAWT;
import javax.swing.*;
import javax.swing.JButton;
import java.awt.event.*;

void setup(){
  size( 400,400 ); 
  
  JLayeredPane panel = getLayeredPanel();
  
  JButton btnHappy = new JButton("If you are happy and you know it");
  btnHappy.setActionCommand( "If you are happy and you know it" );
 
  btnHappy.setBounds( 50,150, 300, 50 );  
  
  btnHappy.addActionListener(
    new ActionListener(){
      public void actionPerformed(ActionEvent ev ){
        String cmd = ev.getActionCommand();
        if( cmd.equals( "If you are happy and you know it" )){
          println( "Clap Your Hands!" );
        }
      }
    }
  ); 
  panel.add( btnHappy );
}
 
void draw(){
  background( 220 );
}
JLayeredPane getLayeredPanel(){
  PSurfaceAWT.SmoothCanvas   canvas;
  canvas = (PSurfaceAWT.SmoothCanvas)getSurface().getNative();
  return (JLayeredPane)canvas.getParent().getParent();
}
