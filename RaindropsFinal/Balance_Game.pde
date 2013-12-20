
class BalanceGame {

  boolean gameOver = false;
  boolean run;
  PImage kanye;

  FWorld f;


  BalanceGame() {

    kanye = loadImage("Kanye Head.png");
    f = new FWorld();
    f.setEdges();

    FCircle anchor = new FCircle(1);
    f.add(anchor);
    anchor.setPosition(width/2, height/2);
    anchor.setStatic(true);
    anchor.setRotatable(false);
    anchor.setGrabbable(false);

    FBox bar = new FBox(150, 15);
    f.add(bar);
    bar.setNoStroke();
    bar.setFill(40, 155, 40);
    bar.setPosition(width/2, height/2);
    bar.setRotatable(true);
    bar.setFriction(20);

    FCircle ball = new FCircle(15);
    f.add(ball);
    ball.setNoStroke();
    ball.setFill(155, 40, 40);
    ball.setDensity(0.1);
    ball.attachImage(kanye);

    FRevoluteJoint vertex = new FRevoluteJoint(bar, anchor);
    f.add(vertex);
    vertex.setNoStroke();


    ball.setPosition(width/2 - width/50, height/4);
  }

  void run() {
    run = true;

    if (keyPressed) {
      ArrayList <FBody> bodies = f.getBodies();

      FBody b = bodies.get(1);

      if (key == 'a') {
        b.adjustRotation(-0.02);
      }
      else if (key == 'd') {
        b.adjustRotation(0.02);
      }
    }

    background(255);
    f.step();
    f.draw();
    circleFell();
  }

  void circleFell() {
    ArrayList <FBody> bodiesC = f.getBodies();
    FBody c = bodiesC.get(0);
    if (c.getY() >=2*width/3) {
      gameOver = true;
      c.setPosition((width/2)-20, height/3);
    }
  }
}

