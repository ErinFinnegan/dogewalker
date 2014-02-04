

var w;

var canvas;

function setup() {
  canvas = createGraphics(400,300);
  canvas.position(0, 50);

  //background(127);
  // Create a walker object
  w = new Walker();

};

/*function preloader() {
  doge = new Image();
  doge.src = "doge.png"
}*/

function draw() {
  background(51);
  // Run the walker object
  //w.walk();
  w.render();
    //throw('draw is most draw');
    //console.log("I'm dying");
};

function Walker() {
	this.x = width/2;
	this.y = height/2;
	//constructor functions are capitalized, by convention
	//constructors make things... happen?
};

Walker.prototype.render = function() {
  //doge;
  // throw('We have doge');
	stroke(255);
	point(this.x,this.y);
  //console.log("send help");
}


