/*

 Sehmon Burnam
 Ms. Gerstein
 Raindrop Project
 6 December 2013
 
 */


//Starts a new RainGame Object

<<<<<<< HEAD
RainGame r1;
StartScreen s1;
boolean run;


void setup() {
  size(800, 600);
  r1 = new RainGame();

  s1 = new StartScreen(0, 0, 0, 75, "Start", "Credits");
=======
//RainGame r1;
StartScreen s1;

void setup() {
  size(800, 600);
  s1 = new StartScreen("Rain", "Start", "Instructions");
  //  r1 = new RainGame();
>>>>>>> origin/title_screen
}

void draw() {
  background(255);
<<<<<<< HEAD
  if (run) {
    r1.run();
  }  
  else {
    s1.run();
  }

  println(s1.b1.isPressed());
}

void mousePressed() {

  if (s1.b1.isPressed()) {
    run = true;
  }
  else if (s1.b2.isPressed()) {
    run = true;
=======
  s1.display();
  //  r1.run();
}

void mousePressed() {
  if (mousePressed) {
    //    r1 = new RainGame();
>>>>>>> origin/title_screen
  }
}

