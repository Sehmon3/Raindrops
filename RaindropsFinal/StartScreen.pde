class StartScreen {
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
  }
}

