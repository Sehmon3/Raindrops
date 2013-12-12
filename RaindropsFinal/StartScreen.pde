class StartScreen {
  Button b1;
  Button b2;
  int w = 150;
  int h = 30;


  StartScreen(int b1x, int b1y, int b2x, int b2y, String _b1, String _b2) {
    b1 = new Button(b1x, b1y, w, h, _b1);
    b2 = new Button(b2x, b2y, w, h, _b2);
  }

  void run() {
    background(255);
    rectMode(CENTER);
    translate(width/2, height/2);
    b1.display();
    b2.display();
  }
}

