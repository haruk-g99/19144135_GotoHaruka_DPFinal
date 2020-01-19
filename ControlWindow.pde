class ControlWindow extends JFrame implements ActionListener{

 JButton boundButton, stopButton;
 JTextField textField;
 JPanel panel; 

 SwingInProcessing_YATP5Window parentWindow;

 ControlWindow(SwingInProcessing_YATP5Window parentWindow){

  super("Control window");

  this.parentWindow = parentWindow;

  this.setSize(320, 240);
  panel = new JPanel();
  panel.setLayout(new BorderLayout());

 boundButton = new JButton("Bound");
   boundButton.setActionCommand("boundButton_Pushed");
   boundButton.addActionListener(this);
   panel.add(boundButton, BorderLayout.NORTH);


  stopButton = new JButton("Stop");
  stopButton.setActionCommand("stopButton_Pushed");
  stopButton.addActionListener(this);
  panel.add(stopButton, BorderLayout.SOUTH);
  textField = new JTextField("Control Panel Text Field");
  panel.add(textField, BorderLayout.CENTER);


   this.getContentPane().add(panel);

  this.setVisible(true);
 }

 @Override
 public void actionPerformed(ActionEvent e){

   actionCommand = e.getActionCommand();
   textField.setText(actionCommand);


   parentWindow.eventsCalledFromControlWindow();

 }
}
