// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

class Walker {

  PVector location;
  PVector velocity;
  PVector acceleration;
  float topspeed;
  float mass;
  int fontSize;

  Walker(float m, int fontSize) {
    location = new PVector(width/2, height/2);
    velocity = new PVector(0, 0);
    topspeed = 6;
    mass = m;
    fontSize = int(random(40, 140));
  }

  void update() {

    acceleration = PVector.random2D();
    acceleration.mult(random(2));
    velocity.add(acceleration);
    velocity.limit(topspeed);
    location.add(velocity);
  }

  void display() {
    //imageMode(CENTER);
    //image(doge, location.x, location.y);
    fill(234, 33, 222);
    textFont(font, fontSize);
    text("wow", location.x, location.y);
    println("fontsize in the Walker class " + fontSize);
  }
  void checkEdges() {

    if ((location.x > width) || (location.x < 0)) {
      velocity.x = velocity.x * -1;
    }
    if ((location.y > height) || (location.y < 0)) {
      velocity.y = velocity.y * -1;
    }
  }
}

