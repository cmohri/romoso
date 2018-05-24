/*
Clara Mohri, Rohan Ahammed, Soojin Choi
APCS2 Pd08
HW53-- All That Bouncin’
2018-05-24
*/

class Ball {
  //initial coordinates  
  float x = random(50, 550);//must be offset by 50 (the radius) in order to not have splits
  float y = random(50, 550);
  //rate of change in x and y direction: 
  float dx = random(3);
  float dy = random(3);
  //color of Ball:
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
      dx = -1 * dx;//change direction
    }
    if (y <= 25 || y >= 575) {
      dy = -1 *dy;//change direction
    }
    x += dx;//go the random # of units per call of draw
    y += dy;
    ellipse(x, y, 50, 50);
    fill(c);
  }
  
}