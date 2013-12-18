/*

 Sehmon Burnam
 Ms. Gerstein
 Raindrop Project
 6 December 2013
 
 */


//Starts a new RainGame Object

import fisica.util.nonconvex.*;
import fisica.*;


BalanceGame b1;
RainGame r1;
StartScreen s1;
EndScreen e1;

boolean run;
boolean over = true;


void setup() {
  size(800, 600);
  Fisica.init(this);
  b1 = new BalanceGame();
  r1 = new RainGame();
  s1 = new StartScreen(width/2, height/2, width/2, height/2 + 75, "Start", "Credits");
  e1 = new EndScreen();
}



void draw() {
  background(255);
  if (over) {
    if (run) {
      if (!b1.gameOver) {
        b1.run();
      }
      r1.run();
    }  
    else {
      s1.run();
    }

    endGame();
  }
}



void mousePressed() {
  if (!run) {
    if (s1.b1.isPressed()) {
      run = true;
    }
    else if (s1.b2.isPressed()) {
      run = true;

      s1.run();
      //  r1.run();
    }
  }
}

void reset() {
  run = !run;
}


void keyPressed() {

  if (key == 'r') {
    reset();
    r1 = new RainGame();
    b1 = new BalanceGame();
  }
}

void endGame() {
  if (b1.gameOver || r1.gameOver) {
    run = !run;

    e1.display(r1.s1);
  }
}

