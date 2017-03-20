import processing.pdf.*;

void setup() {
  size(500, 500);
  background(255);
  
  String[] data = loadStrings("data.txt");
  
  noFill();

  strokeWeight(2);
  translate(0, height/3);
  beginShape();
  // for curve vertex to work we need an extra point at each end
  //curveVertex(0, 0);
  for(int i = 0; i < data.length; i++) {
    float x = map(i, 0, data.length-1, 0, width);
    float y = map(float(data[i]), 0, 4, 0, height/2);
    vertex(x, y);
    //curveVertex(x, y);
  }
  //curveVertex(width, 0);
  endShape();
}