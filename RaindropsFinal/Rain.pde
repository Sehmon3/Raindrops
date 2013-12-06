class Raindrop {
  PVector location;
  PVector speed;
  float yAcc;
  float r;
  int nextdrop;
  color c;

//Sets vairables to arbitrary locations to get the program started

  Raindrop(int _x, float _speed, float _r) {
    location = new PVector(_x, -2*r);
    speed = new PVector(0, random(4, 8));
    r = _r;
    nextdrop = int(random(0, 10));
    c = color(0, 100, 255);
  }

//resets the ball is the given catcher position intersects the raindrop

  void reset(Catcher catcher1, Score s1) {
    location.add(speed);

    //Distance formula
    
    if (dist(catcher1.location.x, catcher1.location.y, location.x, location.y) <= catcher1.r + r) {
       //Gives the location a 0 y coordinat and random color and speed
       
      location.y= 0;
      location.x= int(random(r, width-r));
      s1.score += 1;
      s1.counter += 1;
      speed = new PVector(0, random(4, 8));
      c = color(random(100, 255), random(100, 255), random(100, 255));
      
    }
    
    //If drop is missed, sets the object y location to zero
    
    else if (location.y >= height) {
      location.y= 0;
      s1.missedBalls += 1;
    }
  }
  
  //Displays the raindrop
  
  void display() {
    noStroke();
    fill(c);
    ellipse(location.x, location.y, 2*r, 2*r);
  }
}

