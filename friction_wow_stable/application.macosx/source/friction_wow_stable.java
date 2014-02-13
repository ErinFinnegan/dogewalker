import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class friction_wow_stable extends PApplet {

Mover[] movers = new Mover[5];
PFont font;
PImage doge;
int[] ArrayOfColors = { 
  color(181, 230, 29), color(63, 72, 204), color(255, 174, 201), color(0, 162, 232), color(255, 127, 39), color(255, 242, 0), color(136, 0, 21), color(212, 176, 190), color(207, 209, 100), color(200, 120, 87)
};
String[] words = { 
  "wow", "much processing", "very Java", "much codee", "very scare", "PVectro", "much force", "frictoin", 
  "wow", "very Newton", "much law",
};
int index = PApplet.parseInt(random(words.length)); 
int rgb;
int bounce;



public void setup() {
  size(1000, 750);
  millis();
  doge = loadImage("dogenowords2.jpg");
  font = loadFont("ComicSansMS-Bold-40.vlw");
  randomSeed(1);
  for (int i = 0; i < movers.length; i++) {
    movers[i] = new Mover(random(0.5f, 8), random(width), 0);
  }
  bounce = 0;
  //fill(ArrayOfColors[(int) random(ArrayOfColors.length)]);
  rgb = (ArrayOfColors[(int) random(ArrayOfColors.length)]);
  fill(rgb);
  //Pick one word and one color per word at random from my arrays and then use those words in the draw loop as movers
}

public void draw() {
  background(255);
  image(doge, 0, 0);
  for (int i = 0; i < movers.length; i++) {

    PVector wind = new PVector(1, 0);
    PVector gravity = new PVector(0, (1.0f*movers[i].mass + (bounce/5)));

    float c = 0.1f;
    PVector friction = movers[i].velocity.get();
    friction.mult(-1.5f); 
    friction.normalize();
    friction.mult(c);

    movers[i].applyForce(friction);
    if (bounce > 50) {
      movers[i].applyForce(wind);
    };
    movers[i].applyForce(gravity);

    movers[i].update();
    movers[i].display();
    movers[i].checkEdges();
  }
}

class Mover {

  PVector location;
  PVector velocity;
  PVector acceleration;
  float mass;

  Mover(float m, float x, float y) {
    mass = m;
    location = new PVector(x, y);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
  }

  public void applyForce(PVector force) {
    PVector f = PVector.div(force, mass);
    acceleration.add(f);
  }

  public void update() {
    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);
  }

  public void display() {
    textFont(font, (mass*16));
    text((words[index]), location.x, location.y);
    //ellipse(location.x, location.y, mass*16, mass*16);
  }

  public void checkEdges() {

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

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "friction_wow_stable" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
