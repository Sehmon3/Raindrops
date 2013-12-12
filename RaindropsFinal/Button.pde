class Button {
  PVector size;
  PVector location;
  String text;


  Button(int x, int y, int w, int h, String s) {
    size = new PVector(x, y);
    location = new PVector(w, h);
    text = s;
  } 

  void display() {
    rectMode(CENTER);
    textAlign(CENTER);
    textSize(size.y/2);
    fill(0);
    rect(location.x, location.y, size.x, size.y);
    fill(255);
    text(text, location.x, location.y);
  }

  boolean isPressed() {
    if (mousePressed) {
      //checking if the mouse is clicked within the button
      if (mouseX >= location.x - size.x/2 && mouseX <= location.x + size.x/2 && mouseY >= location.y - size.y/2 && mouseY <= location.y + size.y/2) {
        return true;
      }
    }
    return false;
  }
}

