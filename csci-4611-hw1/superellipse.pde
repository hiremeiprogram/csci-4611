/*superellipse written by Justin Peterson */
import javax.swing.*; 
int varA, varB;
void setup() {
  size(640, 640);
  String presetone="200";
  String presettwo="200";
  String inputone = JOptionPane.showInputDialog(frame, "A", presetone);
  if(inputone != null){
    varA=Integer.parseInt(inputone);
  }
  String inputtwo = JOptionPane.showInputDialog(frame, "B", presettwo);
  if(inputtwo != null){
    varB=Integer.parseInt(inputtwo);
  }
}

void draw(){
  float x, y;
  float nn = 2.0;
  for(int n = 1; n < 20; n=n+2){
    for(int t = 0; t <= 1000; t++){
      x = varA * (float)Math.pow(Math.cos(t * 3.141592/1000), 2/(nn/10*n));
      y = varB * (float)Math.pow(Math.sin(t * 3.141592/1000), 2/(nn/10*n));
      point(x+320,y+320);
      point((-x)+320, (-y)+320);
      point((-x)+320, y+320);
      point(x+320, (-y)+320);
    }
  }
}