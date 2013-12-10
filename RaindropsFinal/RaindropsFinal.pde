/*

 Sehmon Burnam
 Ms. Gerstein
 Raindrop Project
 6 December 2013
 
 */


//Starts a new RainGame Object

//RainGame r1;
Menu m1;

void setup() {
  size(800, 600);
  m1 = new Menu(2, width/2, height/2, "Start", "Instructions");
  //r1 = new RainGame();
}

void draw() {
  background(255);
  m1.display();

  println(m1.boxes[0].dialogue);
  //r1.run();
  //println(r1.gameOver);
}

/*void mousePressed() {
 if (mousePressed) {
 r1 = new RainGame();
 }
 }
 */


