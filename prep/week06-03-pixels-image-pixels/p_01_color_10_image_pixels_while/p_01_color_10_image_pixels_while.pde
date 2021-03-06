//Aven,03/31/2017
//Interactive Installation
//New Media, WPP, SADA

PImage img;
color[] colors;

int colorIndex = 0;
void setup() {
  size(600, 800);
  strokeWeight(1);
  //colorMode(HSB, width, height, width);
  colors = new color[width*height];
  img = loadImage("1.jpg");
  img.resize(width, height);
  background(img);
  loadPixels();
  for (int i =0; i < pixels.length; i ++) {
    color c = (color)pixels[i];
    colors[i] = c;
  }
  updatePixels();
  background(0);
  //printArray(colors);
}


void draw() {
  while (colorIndex < colors.length) {
    int x = colorIndex % width;
    int y =  (int)colorIndex / width;
    stroke(colors[colorIndex]);
    point(x, y);
    colorIndex++;
  }
}