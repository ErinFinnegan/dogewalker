PFont font;
PImage doge;
PVector location;
PVector velocity;
int f;

Walker[] wowwalker = new Walker[12];
//Walker dogewalker;


void setup() {
  size(1200, 1080);
  doge = loadImage("doge.png");
  font = loadFont("ComicSansMS-Bold-40.vlw");
  f = random(40, 140);
  for (int i = 0; i < wowwalker.length; i++) {
    wowwalker[i] = new Walker(4, f);
  }
  //wowwalker = new Walker();
}

void draw() {
  background(255);
  //text("wow", (random(12, width)), (random(12, height)));

  for (int i = 0; i < wowwalker.length; i++) {
    wowwalker[i].display();
    //dogewalker.display(false);
    wowwalker[i].checkEdges();
    wowwalker[i].update();
  }
 // println("fontsize in the draw loop" + fontSize);
  imageMode(CENTER);
  image(doge, width/2, height/2);
}

