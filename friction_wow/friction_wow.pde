
Mover[] movers = new Mover[5];
PFont font;
PImage doge;

void setup() {
  size(1200, 1080);
  doge = loadImage("doge.png");
  font = loadFont("ComicSansMS-Bold-40.vlw");
  randomSeed(1);
  for (int i = 0; i < movers.length; i++) {
    movers[i] = new Mover(random(0.5, 8), random(width), 0);
  }
}

void draw() {
  background(255);
  imageMode(CENTER);
  image(doge, width/2, height/2);
  for (int i = 0; i < movers.length; i++) {

    PVector wind = new PVector(0., 0);
    PVector gravity = new PVector(0, 0.1*movers[i].mass);

    float c = 0.1;
    PVector friction = movers[i].velocity.get();
    friction.mult(-1); 
    friction.normalize();
    friction.mult(c);

    movers[i].applyForce(friction);
    movers[i].applyForce(wind);
    movers[i].applyForce(gravity);

    movers[i].update();
    movers[i].display();
    movers[i].checkEdges();
  }

}





