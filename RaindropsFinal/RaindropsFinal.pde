/*

 Sehmon Burnam
 Ms. Gerstein
 Raindrop Project
 6 December 2013
 
 */


//Starts a new RainGame Object

RainGame r1;
StartScreen s1;
boolean run;


void setup() {
  size(800, 600);
  r1 = new RainGame();

  s1 = new StartScreen(0, 0, 0, 75, "Start", "Credits");
}

void draw() {
  background(255);
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
  }
}

