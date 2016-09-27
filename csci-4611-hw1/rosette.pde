/* rosette written by Justin Peterson
*/
import javax.swing.*; 
int radius, sides;
void setup() {
  size(640, 640);
  String presetone="300";
  String presettwo="22";
  String inputone = JOptionPane.showInputDialog(frame, "Radius (300 recommended)", presetone);
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
  float[] xcoords = new float[sides+1];
  float[] ycoords = new float[sides+1];
  for(int i = 0; i <= sides; i++){
    nx = radius * (float)Math.cos((2 * 3.141592 * (i-1))/sides);
    ny = radius * (float)Math.sin((2 * 3.141592 * (i-1))/sides);
    line(ox+320, oy+320, nx+320, ny+320);
    xcoords[i] = ox+320;
    ycoords[i] = oy+320;
    ox = nx;
    oy = ny;
  }
  for(int i = 0; i <= sides; i++){
    for(int j = 0; j < (i-1); j++){
      line(xcoords[i], ycoords[i], xcoords[j], ycoords[j]);
  }
    for(int k = i+2; k <= sides; k++){
      line(xcoords[i], ycoords[i], xcoords[k], ycoords[k]);
    }
  }
}