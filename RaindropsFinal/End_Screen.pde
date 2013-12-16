class EndScreen {
  PImage loser;

  EndScreen() {
    loser = loadImage("Loser.jpg");
  } 

  void display() {
    background(255);
    imageMode(CENTER);
    image(loser, width/2, height/2, width/3, height/1.5);
  }
}

