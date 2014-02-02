
PFont font;
PImage doge;
PVector location;
PVector velocity;
Walker dogewalker;

void setup() {
  size(1200, 1080);
  doge = loadImage("doge.png");
  font = loadFont("ComicSansMS-Bold-40.vlw");
  dogewalker = new Walker();
}

void draw() {
  fill(234, 33, 222);
  textFont(font, (random(10, 140)));
  background(255);
  text("wow", (random(12, width)), (random(12, height)));
 // dogewalker.update();
//  dogewalker.checkEdges();
  dogewalker.step();  
  dogewalker.display();  
}

