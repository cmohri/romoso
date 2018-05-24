class Ball {
  float x = random(50, 550);//must be offset by 50 (the radius) in order to not have splits
  float y = random(50, 550);
  float xspeed = random(3);
  float yspeed = random(3);
  float numr = random(256);
  float numg = random(256);
  float numb = random(256);
  color c = color(numr, numg, numb);//variables are created to store the colors of the obj

  Ball() {
    fill(c);//color it with teh randomized color
    ellipse(x, y, 50, 50);//start from a random spot within 50-500 of both x and y
  }
  void update() {
    if (x <= 25 || x >= 575) {
      xspeed = -1 * xspeed;//change direction
    }
    if (y <= 25 || y >= 575) {
      yspeed = -1 *yspeed;//change direction
    }
    x += xspeed;//go the random # of units per call of draw
    y += yspeed;
    ellipse(x, y, 50, 50);
    fill(c);
  }
}
