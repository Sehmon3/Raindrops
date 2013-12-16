
class BalanceGame {

  boolean gameOver = false;
  boolean run;

  FWorld f;


  BalanceGame() {

    f = new FWorld();

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

    FRevoluteJoint vertex = new FRevoluteJoint(bar, anchor);
    f.add(vertex);
    vertex.setNoStroke();


    ball.setPosition(width/2 - 3, height/4);
  }

  void run() {

    run = true;

    if (keyPressed) {
      ArrayList <FBody> bodies = f.getBodies();
      FBody f = bodies.get(1);
      FBody circle = bodies.get(0);
      if (circle.getY() <= width/2 + 150) {
        gameOver = true;
      }
      
      if (key == 'a') {
        f.adjustRotation(-0.02);
      }
      else if (key == 'd') {
        f.adjustRotation(0.02);
      }
    }
    background(255);
    f.step();
    f.draw();
  }
}

