// A class for the game that runs behind the raindrop game
class BalanceGame {

  //Initial variables needed for game function
  boolean gameOver = false;
  boolean run;
  PImage kanye;

  //Required for the physics library
  FWorld f;

  
  //Game constructor
  BalanceGame() {

    //sets the kanye variable to the image in the data folder
    kanye = loadImage("Kanye Head.png");
    
    
    //Creates an FWorld, which is the environment the FObjects live in
    f = new FWorld();
    
    //Gives the world barriers
    f.setEdges();

    //Gives properties to the anchor point of the bar
    FCircle anchor = new FCircle(1);
    f.add(anchor);
    anchor.setPosition(width/2, height/2);
    anchor.setStatic(true);
    anchor.setRotatable(false);
    anchor.setGrabbable(false);

    //Gives properties to the player controlled bar
    FBox bar = new FBox(150, 15);
    f.add(bar);
    bar.setNoStroke();
    bar.setFill(40, 155, 40);
    bar.setPosition(width/2, height/2);
    bar.setRotatable(true);
    bar.setFriction(20);

    //Gives properties to the ball the player balances
    FCircle ball = new FCircle(15);
    f.add(ball);
    ball.setNoStroke();
    ball.setFill(155, 40, 40);
    ball.setDensity(0.1);
    ball.attachImage(kanye);

    //The joint that connects the center of the bar to the anchor point
    FRevoluteJoint vertex = new FRevoluteJoint(bar, anchor);
    f.add(vertex);
    vertex.setNoStroke();

    //Sets the starting ball location to a point above the bar to give the bar an initial impulse
    ball.setPosition(width/2 - width/50, height/4);  
  }


  //Manages the running and displaying of the game
  void run() {
    run = true;

    //If 'a' or 'd' is pressed then change the rotation of the middle bar
    if (keyPressed) {
      //Returns a list of objects in the FWorld
      ArrayList <FBody> bodies = f.getBodies();
      
      //The bar body
      FBody b = bodies.get(1);

      if (key == 'a') {
        b.adjustRotation(-0.02);
      }
      else if (key == 'd') {
        b.adjustRotation(0.02);
      }
    }
    
    //Resume running the FWorld
    background(255);
    f.step();
    f.draw();
    circleFell();
  }

  //Tests if the game is over and updates the gameOver variable accordingly 
  void circleFell() {
    ArrayList <FBody> bodiesC = f.getBodies();
    FBody c = bodiesC.get(0);
    if (c.getY() >=2*width/3) {
      gameOver = true;
      c.setPosition((width/2)-20, height/3);
    }
  }
}

