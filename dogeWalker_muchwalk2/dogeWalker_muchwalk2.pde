PFont font;
PImage doge;
PVector location;
PVector velocity;
Walker dogewalker;
String[] words = { 
  "wow", "much processing", "very Java", "much codee"
};
int index = int(random(words.length)); 
int index1 = int(random(words.length)); 
int index2 = int(random(words.length)); 

void setup() {
  size(1200, 1080);
  doge = loadImage("doge.png");
  font = loadFont("ComicSansMS-Bold-40.vlw");
  dogewalker = new Walker();
}

void draw() {
  fill(234, 33, 222);
  textFont(font, (random(10, 140)));
  background(255);
  text((words[index]), (random(12, width)), (random(12, height)));
  text((words[index1]), (random(12, width)), (random(12, height)));
  text((words[index2]), (random(12, width)), (random(12, height)));
  //println(words[randomwords]);
  dogewalker.display();
  dogewalker.checkEdges();
  dogewalker.update();
  println("words[index] = " + words[index]);
  println("words[index1] = " + words[index1]);
  println("words[index2] = " + words[index2]);
}

