class Button {
  PVector size;
  PVector location;
  String text;


  Button(int x, int y, int w, int h, String s) {
    location = new PVector(x, y);
    size = new PVector(w, h);
    text = s;
  } 

  void display() {
    rectMode(CENTER);
    textAlign(CENTER);
    fill(255);
    rect(location.x, location.y, size.x, size.y);
    fill(30);
    textSize(size.y/2);
    text(text, location.x, location.y);
  }

  boolean isPressed() {
    //checking if the mouse is clicked within the button
    if (mouseX >= location.x - size.x/2 /* && mouseX <= location.x + size.x/2 && mouseY >= location.y - size.y/2 && mouseY <= location.y + size.y/2 */) {

      return true;
    }
    else {
      return false;
    }
  }
}

