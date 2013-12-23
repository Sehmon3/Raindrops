/*

 Sehmon Burnam
 Ms. Gerstein
 Raindrop Project
 6 December 2013
 
 */


//Starts a new RainGame Object
//Imports the physics library Fisica

import fisica.util.nonconvex.*;
import fisica.*;

//Starts the components needed for a MultiTask Game

BalanceGame b1;
RainGame r1;
StartScreen s1;
EndScreen e1;

//Booleans to determine if the game has started or not

boolean run;
boolean over = true;

//Initializes the declared variables
void setup() {
  size(800, 600);
  
  //Needed to start the Fisica Physics Library
  Fisica.init(this);
  
  //The four objects needed to create a multiTask Game are created here
  b1 = new BalanceGame();
  r1 = new RainGame();
  s1 = new StartScreen(width/2, 4*height/7, width/2, 4*height/7 + 75, "Start", "Credits");  //Sets the variables for the start box and credit box
  e1 = new EndScreen();
}



//Draws the game
void draw() {
  background(255);
  
  //Variable to determine if the game is over
  if (over) {
    
    //Variale to tell if game should be running
    if (run) {
      
      //Variable that should be false when the game starts
      if (!b1.gameOver) {
        b1.run();
      }
      r1.run();
    }  
    //else show the start screen
    else {
      s1.run();
    }

    endGame();
  }
}


// Sets run to true if a button is pressed while the game isnt running ---> should start the game
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

//function for the reset button
void reset() {
  run = !run;
}

//resets the game if 'r' is pressed
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

