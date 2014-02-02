//Largely from The Nature of Code by Daniel Shiffman http://natureofcode.com

class Walker {
  int x, y;

  boolean[][] grid;

  //  PVector location;
  //  PVector velocity;
  PVector acceleration;
  float topspeed;

  Walker() {
    x = width/2;
    y = height/2;
    grid = new boolean[width][height];
    //  location = new PVector(width/2, height/2);
    // velocity = new PVector(0, 0);
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

  //  void checkEdges() {
  //
  //    if ((location.x > width) || (location.x < 0)) {
  //      velocity.x = velocity.x * -1;
  //    }
  //    if ((location.y > height) || (location.y < 0)) {
  //      velocity.y = velocity.y * -1;
  //    }
  //  }

  void step() {

    boolean ok = false;

    int helpme = 0;

    while (!ok) {

      int choice = int(random(4));

      int saveX = x;
      int saveY = y;

      if (choice == 0) {
        x++;
      } 
      else if (choice == 1) {
        x--;
      } 
      else if (choice == 2) {
        y++;
      } 
      else {
        y--;
      }

      x = constrain(x, 0, width-1);
      y = constrain(y, 0, height-1);

      if (grid[x][y] == false) {
        ok = true;
        grid[x][y] = true;
      } 
      else {
        x = saveX;
        y = saveY;
      }


      helpme++;

      if (helpme > 1000) {
        println("STUCK");
        noLoop();
        ok = true;
      }
    }
  }
}

