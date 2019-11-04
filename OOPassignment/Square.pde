class Square {
  float x;
  float y;
  float size;
  float red;
  float green;
  float blue;
  float speed;

  Square(float tempD, float tempRed, float tempGreen, float tempBlue, float tempSpeed) {
    x=random(0,500);
    y=500;
    size = tempD;
    red = tempRed;
    green = tempGreen;
    blue = tempBlue;
    speed= tempSpeed;
  }

  void ascend() {
    y= y-speed;

  }
  void display() {

    noStroke();
    fill(red,green,blue);
    rect(x, y, size, size);
  }

}
