
Mover[] movers = new Mover[5];
PFont font;
PImage doge;
color[] ArrayOfColors = { 
  color(181, 230, 29), color(63, 72, 204), color(255, 174, 201), color(0, 162, 232), color(255, 127, 39), color(255, 242, 0), color(136, 0, 21), color(212, 176, 190), color(207, 209, 100), color(200, 120, 87)
};
String[] words = { 
  "wow", "much processing", "very Java", "much codee", "very scare", "PVectro", "much force", "frictoin", 
  "wow", "very Newton", "much law",
};
int index; 
color rgb;
int bounce;
PVector newGravity;

void setup() {
  size(1000, 750);
  millis();
 // fill(rgb);
  doge = loadImage("dogenowords2.jpg");
  font = loadFont("ComicSansMS-Bold-40.vlw");
  randomSeed(1);
  rgb = (ArrayOfColors[(int) random(ArrayOfColors.length)]);
  for (int i = 0; i < movers.length; i++) {
    movers[i] = new Mover(random(0.5, 8), random(width), 0, rgb);
  }
  //fill(ArrayOfColors[(int) random(ArrayOfColors.length)]);
  println("rgb = " + rgb);
  bounce = 0;
  println("movers.length = " + movers.length);
  println("(ArrayOfColors[(int) random(ArrayOfColors.length)]) = " + (ArrayOfColors[(int) random(ArrayOfColors.length)])); 
  println("ArrayOfColors = " + ArrayOfColors);
  println("words = " + words);
  //Pick one word and one color per word at random from my arrays and then use those words in the draw loop as movers
  index = int(random(words.length));
}

void draw() {
  background(255);
  //  imageMode(CENTER);
  image(doge, 0, 0);
  for (int i = 0; i < movers.length; i++) {

    PVector wind = new PVector(1, 0);
    PVector gravity = new PVector(0, (1.0*movers[i].mass + (bounce/5)));

    float c = 0.1;
    PVector friction = movers[i].velocity.get();
    friction.mult(-1.5);  //the friction multiplier was -1.5 originally
    friction.normalize();
    friction.mult(c); //c originally

    movers[i].applyForce(friction);
    if (bounce > 50) {
      movers[i].applyForce(wind);
    };
    movers[i].applyForce(gravity);

    movers[i].update();
    movers[i].display();
    movers[i].checkEdges();
    // println("gravity = " + gravity);
    gravity = newGravity;
  }
  //  println("millis = " + millis());
  //println("bounce = " + bounce);
  //println("rgb = " + rgb);
  //rgb = (ArrayOfColors[(int) random(ArrayOfColors.length)]);
}

