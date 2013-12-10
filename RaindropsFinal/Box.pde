class Box {
  PVector location;
  PVector size;
  String dialogue;

  Box(float _x, float _y, float _w, float _h, String s) {
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
    translate(location.x, location.y);
    fill(0);
    text(dialogue, 0, 0);
  }
}

