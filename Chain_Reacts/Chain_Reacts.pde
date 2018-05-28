Ball clicked;//ball that grows/shrinks at mouse-click
float numBalls = random(25, 35);//random # of moving balls between 25-35
Ball[] list = new Ball[(int)numBalls];//array of all balls besides clicked one

void setup() {
  size(600, 600);//set size to 600x600
  background(0);//background color black
  for (int i = 0; i < (int)numBalls; i++) {
    list[i] = new Ball();//construct balls in array
    fill(color(random(256), random(256), random(256)));//fill each ball w/ random colors
  }
}

void draw() {
  clear();//clear the screen of the previous balls
  fill(0, 0, 0);
  for (int i = 0; i < (int) numBalls; i++) {
    if (list[i].getState() == Ball.MOVING) {//if ball is supposed to be moving, move
      list[i].move();
    } 
    if (list[i].getState() == Ball.GROWING || list[i].getState() == Ball.SHRINKING) {
      list[i].grow();//if ball is supposed to be growing or shrinking, call grow()
      for (int x = 0; x < (int) numBalls; x++) {
        if (list[x].isColliding(list[i])) {
    //check if any of the balls in the array is touching any of the other balls in the array
          list[x].grow();
        }
      }
    }
    if (clicked != null) {//check if the original clicked ball is touching any balls in array
      if (list[i].isColliding(clicked)) {
        list[i].grow();
      }
    }
  }
  if (clicked != null && clicked.getState() != clicked.DEAD) {
    clicked.grow();//clicked ball starts to grow/shrink once clicked
  }
}

void mouseClicked() {
  clicked = new Ball(mouseX, mouseY);//construct ball based on the coordinates of the cursor
}
