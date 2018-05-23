class Ball {
  float x = random(50, 550);
  float y = random(50, 550);

  Ball() {
    fill(color(random(256), random(256), random(256)));
    ellipse(x, y, 50, 50);
  }
  void move() {
    x+= 100;
    y += 100;
    ellipse(x, y, 50, 50);
  }
}