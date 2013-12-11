/*

 Sehmon Burnam
 Ms. Gerstein
 Raindrop Project
 6 December 2013
 
 */


//Starts a new RainGame Object

//RainGame r1;
StartScreen s1;

void setup() {
  size(800, 600);
  s1 = new StartScreen("Rain", "Start", "Instructions");
  //  r1 = new RainGame();
}

void draw() {
  background(255);
  s1.display();
  //  r1.run();
}

void mousePressed() {
  if (mousePressed) {
    //    r1 = new RainGame();
  }
}

