int bWidth, bHeight;

Brick[][] bricks;

void setup(){
  size(800,950);
  bWidth = 9;
  bHeight = 3;
  bricks = new Brick[bWidth][bHeight];
  
  //Brick myBrick = new Brick(100, 200);
  
  //bricks[0] = myBrick;
  for (int i = 0; i < bWidth; i++){
    for (int j = 0; j < bHeight; j++){
      bricks[i][j] = new Brick(10+88*i,160+40*j);
    }
  }
}

void draw(){
  for (int i = 0; i < bWidth; i++){
    for (int j = 0; j < bHeight; j++){
      bricks[i][j].render();
    }
  }
}
