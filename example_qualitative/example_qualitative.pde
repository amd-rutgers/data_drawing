import processing.pdf.*;

color colors[];

void setup() {
  size(500, 500, PDF, "sketch.pdf");
  
  background(255);
  
  // load data and create empty array for colors
  String data[] = loadStrings("data.txt");
  color colors[] = new color[data.length];
    
  // each feeling is assigned to a color
  for(int i=0; i < data.length; i++) {
    String feeling = trim(data[i]);
    if(feeling.equals("sad")) {
      colors[i] = color(23, 245, 100);
    } else if (feeling.equals("happy")) {
      colors[i] = color(245, 100, 23);      
    } else if (feeling.equals("tired")) {
      colors[i] = color(100, 245, 23);      
    } else if (feeling.equals("bored")) {
      colors[i] = color(23, 100, 245);      
    }
  }

  // set the width of each gradient
  float gradientWidth = width / (colors.length-1);
    
  // draw a gradient for every two colors
  for(int i = 0; i < colors.length-1; i++) {
    drawGradient(0, 50, gradientWidth, 400, colors[i], colors[i+1]);
    translate(gradientWidth, 0);
  }
  
}

/**
 * Function drawGradient
 * Draws a horizontal gradient at position to fill given dimensions
 *
 * drawGradient(x coordinate, y coordinate, width, height, first color, second color)
 */
void drawGradient(float x, float y, float w, float h, color c1, color c2) {
  for(int i = int(x); i < x+w; i++) {
    float distance = map(i, x, x+w, 0, 1);
    color c = lerpColor(c1, c2, distance);
    stroke(c);
    line(i, y, i, y+h);    
  }
}