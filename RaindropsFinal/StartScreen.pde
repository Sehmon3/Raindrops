class StartScreen {
<<<<<<< HEAD
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
=======
  String gameTitle;
  String title1;
  String title2;

  StartScreen(String title, String t1, String t2) {
    gameTitle = "Rain";
    title1 = t1;
    title2 = t2;
  }

  void display() {
    background(0, 150, 255);
    textAlign(CENTER);
    textSize(50);
    text(gameTitle, width/2, height/5);

    textSize(30);
    text(title1, width/3, 5*height/6);
    text(title2, 2*width/3, 5*height/6);
>>>>>>> origin/title_screen
  }
}

