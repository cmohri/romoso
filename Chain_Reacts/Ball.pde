/*
Clara Mohri, Rohan Ahammed, Soojin Choi
 APCS2 Pd08
 HW53-- All That Bouncin’
 2018-05-24
 */
class Ball {

  //states
  final static int MOVING = 0;
  final static int GROWING = 1;
  final static int SHRINKING = 2;
  final static int DEAD = 3;
  final float CHANGE_FACTOR = .25;
  final float MAX_RADIUS = 50;

  //initial coordinates
  float rad = 25;
  float x = random(rad, 600-rad);//must be offset by 50 (the radius) in order to not have splits
  float y = random(rad, 600-rad);
  //rate of change in x and y direction: 
  float dx = random(3);
  float dy = random(3);

  int state;

  //color of Ball:
  float numr = random(256);
  float numg = random(256);
  float numb = random(256);
  color c = color(numr, numg, numb);//variables are created to store the colors of the obj
  Ball() {
    fill(c);
    ellipse(x, y, rad, rad);
    state = 0;
  }

  Ball(int xcor, int ycor) {//make two constructors
    fill(c);//color it with the randomized color
    ellipse(xcor, ycor, rad, rad);//start from a random spot within 50-500 of both x and y
    x = xcor;
    y = ycor;
    state = 1;
  }
  void update() {
    if (x <= rad / 2 || x >= 600 - (rad / 2)) {
      dx = -1 * dx;//change direction
    }
    if (y <= rad / 2 || y >= 600 - (rad / 2)) {
      dy = -1 *dy;//change direction
    }
    x += dx;//go the random # of units per call of draw
    y += dy;
    ellipse(x, y, rad, rad);
    fill(c);
  }
  int state(int x) {
    state = x;
    return state;
  }
  void grow() {
    if (state == 1) {
      rad += CHANGE_FACTOR;
      ellipse(x, y, rad, rad);
    }
    if (rad >= MAX_RADIUS)
  }
}