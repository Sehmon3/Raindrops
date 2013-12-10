class Menu {
  PVector location;
  Box[] boxes;

  Menu(int _boxes, int x, int y, String a, String b) {

    boxes = new Box [_boxes];

    for (int i = boxes.length-1; i >= 0; i--) {
      boxes[i] = new Box(width/2, height/2, 100, 30, "");
    }
     boxes[0].dialogue = a;
     boxes[1].dialogue = b;
  }

  void display() {
    for(int i = boxes.length - 1; i >= 0; i--){
      for(int i = 
       boxes[i].display(); 
    }
  }
}

