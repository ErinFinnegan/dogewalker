
class Mover {

  PVector location;
  PVector velocity;
  PVector acceleration;
  float mass;

  Mover(float m, float x, float y, color wordColor, String WordOftheDay) {
    mass = m;
    location = new PVector(x, y);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
    wordColor = rgb;
    WordOftheDay = muchWord;
  }

  void applyForce(PVector force) {
    PVector f = PVector.div(force, mass);
    acceleration.add(f);
  }

  void update() {
    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);
  }

  void display() {
    // imageMode(CENTER);
    // image(doge, location.x, location.y);
    textFont(font, (mass*9));
    text(muchWord, location.x, location.y);
    //ellipse(location.x, location.y, mass*16, mass*16);
  }

  void checkEdges() {

    if (location.x < 0) {
      location.x = 0;
      velocity.x *= -1;
    }

    //    if (location.x > width) {
    //      location.x = width;
    //      velocity.x *= -1;
    //    } 
    if (location.x < 0) {
      location.x = 0;
      velocity.x *= -1;
    }

    if (location.y > height) {
      velocity.y *= -1;
      location.y = height;
    }
    if (location.y == height) {
      ++bounce;
    }
  }
}

