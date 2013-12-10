class Box {
  PVector location;
  PVector size;
  String dialogue;

  Box(int _x, int _y, int _w, int _h, String s) {
    location = new PVector(_x, _y);
    size = new PVector(_w, _h);
    dialogue = s;
  }

  void display() {
    fill(255);
    rectMode(CENTER);
    textAlign(CENTER);
    textSize(size.y / 2);
    rect(location.x, location.y, size.x, size.y);
    fill(0);
    text(dialogue, location.x, location.y);
  }
}

