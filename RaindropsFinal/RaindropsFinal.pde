/*

Sehmon Burnam
Ms. Gerstein
Raindrop Project
6 December 2013

*/


//Starts a new RainGame Object

RainGame r1;

void setup() {
  size(400, 400);
  r1 = new RainGame();
}

void draw() {
  background(0);
  r1.run();
}





