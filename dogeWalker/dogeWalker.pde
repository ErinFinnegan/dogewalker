
PFont font;
PImage doge;

void setup() {
  size(1200, 1080);
  doge = loadImage("doge.png");
  font = loadFont("ComicSansMS-Bold-20.vlw");
}

void draw() {
  fill(234, 33, 222);
  textFont(font, 30);
  background(255);
  image(doge, mouseX, mouseY);
  //doge.resize(150, 150);
  text("wow", (random(12, width)), (random(12, height)));
}

