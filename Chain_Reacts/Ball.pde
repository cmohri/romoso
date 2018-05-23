class Ball {
  float  x = random(50, 550);
  float y = random(50, 550);
  float xspeed = random(3);
  float yspeed = random(3);

  Ball() {
    fill(color(random(256), random(256), random(256)));
    ellipse(x, y, 50, 50);
  }

  void update() {

    if (x <= 25 || x >= 575) {
      xspeed = -1 * xspeed;
    }
    if (y <= 25 || y >= 575) {
      yspeed = -1 *yspeed;
    }
    x += xspeed;
    y += yspeed;
    ellipse(x, y, 50, 50);
  }
}
