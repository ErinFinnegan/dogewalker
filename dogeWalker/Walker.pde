// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

class Walker {

  PVector location;
  PVector velocity;
  PVector acceleration;
  float topspeed;

  Walker() {
    location = new PVector(width/2, height/2);
    velocity = new PVector(0, 0);
    topspeed = 6;
  }

  void update() {

    acceleration = PVector.random2D();
    acceleration.mult(random(2));

    velocity.add(acceleration);
    velocity.limit(topspeed);
    location.add(velocity);
  }

  void display() {
    imageMode(CENTER);
    image(doge, location.x, location.y);
  }

  void checkEdges() {

    if ((location.x > width) || (location.x < 0)) {
      velocity.x = velocity.x * -1;
    }
    if ((location.y > height) || (location.y < 0)) {
      velocity.y = velocity.y * -1;
    }

    //    if (location.x > width) {
    //      location.x = 0;
    //    } 
    //    else if (location.x < 0) {
    //      location.x = width;
    //    }
    //
    //    if (location.y > height) {
    //      location.y = 0;
    //    } 
    //    else if (location.y < 0) {
    //      location.y = height;
    //    }
  }
}

// // Add the current speed to the location.

// // the former code for bouncing off the edges
//   location.add(velocity);
//
//  if ((location.x > width) || (location.x < 0)) {
//    velocity.x = velocity.x * -1;
//  }
//  if ((location.y > height) || (location.y < 0)) {
//    velocity.y = velocity.y * -1;
//  }

