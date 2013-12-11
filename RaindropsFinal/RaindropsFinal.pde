/*

 Sehmon Burnam
 Ms. Gerstein
 Raindrop Project
 6 December 2013
 
 */


//Starts a new RainGame Object

RainGame r1;

void setup() {
  size(800, 600);
  r1 = new RainGame();
}

void draw() {
  background(255);
  r1.run();
  println(r1.gameOver);
}

void mousePressed() {
  if (mousePressed) {
    r1 = new RainGame();
  }
}


