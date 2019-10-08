class slime {
  PVector x, v;
  float r;
  boolean jump, moveLeft, moveRight;

  slime() {
    r = 100;
    x = new PVector(100, 100);
    v = new PVector(0, 0);
    jump = false;
    moveLeft = false;
    moveRight = false;
  }

 void render() {
    fill(0, 255, 0);
    ellipse(x.x, x.y, 2*r, 2*r);
    fill(255);
    rect(x.x-r, x.y, 2*r, r);
    fill(255);
    ellipse(x.x+35, x.y-25, r/2, r/2);
    fill(0);
    ellipse(x.x+35, x.y-25, r/5, r/5);
  }

  void update() {
    v.y += g;
    
    if (moveLeft) {
      v.x += -8;
    }
    if (moveRight) {
      v.x += 8;
    }
    if (jump && x.y == height) {
      v.y = -10;
      jump = false;
    }

    x.add(v);

    if ( x.y > height) {
      x.y = height;
      v.y = 0;
    }

    v.x = 0;
  }
}
