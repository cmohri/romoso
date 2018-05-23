void setup() {
  size(600, 600);
  for (int x = 0; x < random(25, 35); x++){
    Ball a = new Ball();
    a.move();
  }
  
}