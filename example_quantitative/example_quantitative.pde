import processing.pdf.*;

void setup() {
  size(500, 500);
  background(255);
  
  // import data
  String[] data = loadStrings("data.txt");
  
  // set our stroke weight, no fill
  noFill();
  strokeWeight(2);
  
  // move our pen down the canvas
  translate(0, height/3);
  
  // draw a line using our data
  // try commenting out the `vertex` line and uncommenting the
  // `curveVertex` lines to see another example
  beginShape();
  // for curve vertex to work we need an extra point at beginning and end
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