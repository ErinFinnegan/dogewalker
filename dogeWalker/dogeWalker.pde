

PImage doge;

void setup() {
  size(800, 600);
  doge = loadImage("doge.png");
  background(255);
  

}

void draw() {
  image(doge, 400, 300);
  //doge.resize(150, 150);
}
