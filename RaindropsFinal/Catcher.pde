class Catcher {
  PVector location;
  float r;

  Catcher() {
    r = 20;
  }


//Displays the catcher at the given x and y location
  
  void display(float _xPos, float _yPos) {
    location = new PVector(_xPos, _yPos);
    fill(0, 100, 25);
    ellipse(location.x, location.y, 2*r, 2*r);
  }
}

