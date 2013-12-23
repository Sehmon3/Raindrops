
//Score Kepper deciding the "level up" of the game with the addition of a new ball. 
//Added to simplify the raindrop class
class Score {
  int score;
  int counter;
  boolean levelUp;
  int missedBalls;
  boolean lose;

  Score() {
    score = 0;
    counter = 0;
    levelUp = false;
    missedBalls = 0;
  }

//Manages the score and ball increment
  void keep() {
    
    //If 12 ball have passed by the screen then the counter, or amount of balls increases
    
    if (counter - 12 >= 0) {
      counter = 0;
      levelUp = true;
    }
    if (missedBalls == 3) {
      lose = true;
    }
  }
  //Returns the boolean lose, which is true when three ball have reached the bottom of the screen
  boolean gameOver() {
    return lose;
  }

  void display() {
    fill(0);
    textSize(30);
    text(score, 50, height-2);
  }
}

