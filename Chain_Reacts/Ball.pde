class Ball {

  int state;
  final static int MOVING = 0;
  final static int GROWING = 1;
  final static int SHRINKING = 2;
  final static int DEAD = 3;

  float rad = 25;//radius that can be changed
  float x = random(rad, 600-rad);//random location based on rad
  float y = random(rad, 600-rad);
  float dx = random(3);//random speed
  float dy = random(3);//random speed

  float numr = random(256);
  float numg = random(256);
  float numb = random(256);
  color c = color(numr, numg, numb);//random colors

  final float CHANGE_FACTOR = .25;//how much is added/subtract during each loop
  final float MAX_RADIUS = 100;//the threshold for growing

  Ball() {
    fill(c);
    ellipse(x, y, rad, rad);
    state = MOVING; 
  }

  Ball (int xcor, int ycor) {
    fill(c);
    ellipse(xcor, ycor, rad, rad);
    x = xcor;
    y = ycor;
    state = GROWING; 
  }

  int getState(){
    return state;//return the state so can be accessed by Chain_Reacts
  }
  void move() {
    if (x <= (rad/2) || x >= (600-(rad/2))) {
      dx = -1 * dx;//change direction
    }
    if (y <= (rad/2) || y >= (600-(rad/2))) {
      dy = -1 *dy;//change direction
    }
    x += dx;
    y += dy;
    fill(c);
    ellipse(x, y, rad, rad);
    state = MOVING;
  }

  void grow() {
    if (rad == 0) {
      state = DEAD;
    } else if (rad >= MAX_RADIUS) {
      state = SHRINKING;
      rad -= CHANGE_FACTOR;
      fill(c);
      ellipse(x, y, rad, rad);
    } else if (state == GROWING) {
      rad += CHANGE_FACTOR;      
      fill(c);
      ellipse(x, y, rad, rad);
    }
    if (state == SHRINKING) {
      rad -= CHANGE_FACTOR;
      fill(c);
      ellipse(x, y, rad, rad);
    }
    if (state == MOVING) {
      state = GROWING;
      rad += CHANGE_FACTOR;
      fill(c);
      ellipse(x, y, rad, rad);
    }
  }

  boolean isColliding(Ball other) {//used to see if balls are toucing
    return ( (!other.equals(this)) &&
      dist(x, y, other.x, other.y) <= ((rad + other.rad)/2) && //geometry of figuring out if two circles are colliding
      (other.getState() == 2 || other.getState() == 1) &&
      (state != 3));
  }
}
