
// An object that contains all the parts to clean up the main draw function

class RainGame {

  // A new catcher, raindrop array, timer,  score keeper, and r variable to adjust the size of the drops falling
  Catcher c1;
  Raindrop[] drops = new Raindrop [1];
  Score s1;
  Timer t1;
  float r;
  boolean gameOver;

  //Sets the variables of the RainGame object to other objects
  RainGame() {
    r = 50;
    c1 = new Catcher();
    s1 = new Score();
    t1 = new Timer();
    drops[0] = new Raindrop(width/2, 0.05, r);
    gameOver = false;
  }

  //Displays the catcher on the mouse and also keeps the score
  void run() {
    c1.display(mouseX, (2*width/3));
    s1.keep();
    s1.display();
    gameOver = s1.gameOver();
    for (int i = 0; i < drops.length; i++) {
      drops[i].reset(c1, s1);
      drops[i].display();
    }

    //The if-statemnent that governs the addition of drops to the array using the apend function

    if (s1.levelUp) {
      if (frameCount % int(random(10, 60)) == 0) {
        r *= 0.75;
        Raindrop d = new Raindrop(int(random(drops[0].r, width-drops[0].r)), 0.05, r);
        drops = (Raindrop[]) append(drops, d);
        s1.levelUp = false;
      }
    }
  }
}

