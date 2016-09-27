/* super draw written by Justin Peterson
  mouse drag features not yet working
  keypress a and r for acceptance or rejection not yet working
  otherwise works
*/

import javax.swing.*; 

boolean cont = true;
//boolean draw = false;
String presetCont = "y";
String presetA = "100";
String presetB = "100";
String presetN = "2";
String presetShade = "0";
float varA = 0;
float varB = 0;
float n = 0;
int shade = 0;
float mx = 0;
float my = 0;

void setup() {
  size(640, 640);
}

void draw(){
  while(cont){
      getInput();
      drawFromInput(); 
      
  }
  saveFrame();
 // while(draw){
    
 // }
}

void keyPressed(){
  if(keyCode == 97){
    //draw = true;
  }
  if(keyCode == 114){
    //eraseInput();
  }
}

void mouseDragged(){
  mx = mouseX - pmouseX;
  my = mouseY - pmouseY;
}

/*void eraseInput(){
  float x = 0;
  float y = 0;
  fill(0, 0, 0);
  for(int t = 0; t <= 2000; t++){
    x = varA * (float)Math.pow(Math.cos(t * 3.141592/2000), 2/n);
    y = varB * (float)Math.pow(Math.sin(t * 3.141592/2000), 2/n);
    point(x+320+mx,y+320+my);
    point((-x)+320+mx, (-y)+320+my);
    point((-x)+320+mx, y+320+my);
    point(x+320+mx, (-y)+320+my);
  }
  fill(shade, blueShade, greenShade);
}*/

void drawFromInput(){
  float x, y;
  fill(shade);
  for(int t = 0; t <= 2000; t++){
    x = varA * (float)Math.pow(Math.cos(t * 3.141592/2000), 2/n);
    y = varB * (float)Math.pow(Math.sin(t * 3.141592/2000), 2/n);
    point(x+320+mx,y+320+my);
    point((-x)+320+mx, (-y)+320+my);
    point((-x)+320+mx, y+320+my);
    point(x+320+mx, (-y)+320+my);
  }
}

void getInput(){
    String input = JOptionPane.showInputDialog(frame, "More Shapes after this one? (y or n)", presetCont);
    if(input != null){
      if(input.equals("n")){
        cont = false;
      }
    }
    else{
      cont = false;
    }
    String inputA = JOptionPane.showInputDialog(frame, "A", presetA);
    if(inputA != null){
      varA=Float.parseFloat(inputA);
    }
    String inputB = JOptionPane.showInputDialog(frame, "B", presetB);
    if(inputB != null){
      varB=Float.parseFloat(inputB);
    }
    String inputN = JOptionPane.showInputDialog(frame, "n", presetN);
    if(inputN != null){
      n = Float.parseFloat(inputN);
    }
    String inputshade = JOptionPane.showInputDialog(frame, "Input Color (0-255)", presetShade);
    if(inputshade != null){
      shade = Integer.parseInt(inputshade);
    }
}