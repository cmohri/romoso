class Ball {
  float  x = random(50, 550);
  float y = random(50, 550);
  float xspeed = random(3);
  float yspeed = random(3);
  float numr = random(256);
  float numg = random(256);
  float numb = random(256);
  color c = color(numr, numg, numb);

  Ball() {
    fill(c);
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
    fill(c);
  }
}
