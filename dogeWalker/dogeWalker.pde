
PFont font;
PImage doge;
PVector location;
PVector velocity;


void setup() {
  size(1200, 1080);
  doge = loadImage("doge.png");
  font = loadFont("ComicSansMS-Bold-40.vlw");
  location = new PVector(100, 100);
  velocity = new PVector(2.5, 5);
}

void draw() {
  fill(234, 33, 222);
  textFont(font, (random(10, 140)));
  background(255);

  // Add the current speed to the location.
  location.add(velocity);

  if ((location.x > width) || (location.x < 0)) {
    velocity.x = velocity.x * -1;
  }
  if ((location.y > height) || (location.y < 0)) {
    velocity.y = velocity.y * -1;
  }
  imageMode(CENTER);
  image(doge, location.x, location.y);
  //doge.resize(150, 150);
  text("wow", (random(12, width)), (random(12, height)));
}

