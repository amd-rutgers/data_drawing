import processing.pdf.*;

color colors[];

void setup() {
  size(500, 500, PDF, "sketch.pdf");
  background(255);
  
  // import data
  String data[] = loadStrings("data.txt");
    
  // do something with your data!
}