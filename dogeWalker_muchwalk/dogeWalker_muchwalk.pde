
boolean bDisplayMessage;
int startTime; 
int DISPLAY_DURATION = 10000; 
PFont font;
PImage doge;
PVector location;
PVector velocity;
Walker dogewalker;
float Gaussian = randomGaussian();

void setup() {
  size(1200, 1080);
  doge = loadImage("doge.png");
  font = loadFont("ComicSansMS-Bold-40.vlw");
  dogewalker = new Walker();
  startTime = millis();
}

void draw() {
  fill(234, 33, 222);
  int m = millis();
  textFont(font, (random(10, 140)));
  background(255);

  if (bDisplayMessage == true) {
    //text("wow", (width/2 + randomGaussian()), (height/2 + randomGaussian()));
    text("wow", (random(12, width)), (random(12, height)));
    if (startTime <= DISPLAY_DURATION) 
    {  // Stop displaying the message
      bDisplayMessage = false;
    }
  }
  dogewalker.display();
  dogewalker.checkEdges();
  dogewalker.update();
  println("is display message true? " + bDisplayMessage);
  println("startTime = " + startTime);
  println("millis  = " + m);
}

void mousePressed() {
  bDisplayMessage = true;
  startTime = 0;
}

