Brick[] bricks;

void setup(){
  size(600,400);
  bricks = new Brick[3];
  Brick myBrick = new Brick(100, 200);
  
  bricks[0] = myBrick;
  bricks[1] = new Brick(10,10);
  bricks[2] = new Brick(random(100), random(100));
}

void draw(){
  for (Brick b : bricks){
    b.render(); 
  }
}
