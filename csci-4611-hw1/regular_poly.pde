/* regular poly written by Justin Peterson
*/
import javax.swing.*; 
int radius, sides;
void setup() {
  size(640, 640);
  String presetone="300";
  String presettwo="8";
  String inputone = JOptionPane.showInputDialog(frame, "Radius", presetone);
  if(inputone != null){
    radius=Integer.parseInt(inputone);
  }
  String inputtwo = JOptionPane.showInputDialog(frame, "Number of Sides", presettwo);
  if(inputtwo != null){
    sides=Integer.parseInt(inputtwo);
  }
}
void draw(){
  float ox = radius;
  float oy = 0;
  float nx, ny;
  for(int i = 0; i <= sides; i++){
    nx = radius * (float)Math.cos((2 * 3.141592 * (i-1))/sides);
    ny = radius * (float)Math.sin((2 * 3.141592 * (i-1))/sides);
    line(ox+320, oy+320, nx+320, ny+320);
    ox = nx;
    oy = ny;
  }
}