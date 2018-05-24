float numBalls = random(25, 35);//randomly chooses a num of balls from 25-35
Ball[] list = new Ball[(int)numBalls];//creates an array to hold these balls.
//array is necessary to be able to reference the Balls w/o creating 25-35 references

void setup() {
  size(600, 600);//sets up 600x600
  background(0);//black background
  for (int i = 0; i < (int)numBalls; i++) {//stores the object in the array
    list[i] = new Ball();
    fill(color(random(256), random(256), random(256)));//colors the ball a random color
  }
}


void draw() {
  clear();//get rid of the old position
  for (int i = 0; i < (int) numBalls; i++) {//for every ball
    list[i].update();//update aka move
  }
}
