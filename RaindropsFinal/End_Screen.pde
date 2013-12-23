//An End Screen class with stupid graphic to match 
class EndScreen {
  PImage loser;
  String text = "Game Over - Your Score: ";

  EndScreen() {
    loser = loadImage("Loser.jpg");
  } 
  //Displays the score at the end of the game
  void display(Score s1) {

    background(255);
    imageMode(CENTER);
    image(loser, width/2, height/2, width/3, height/1.5);

    //Flashes the score and text
    fill(random(0, 150));
    textAlign(CENTER);
    textSize(30);
    text(text + s1.score, width/2, 8*height/9);
  }
}

