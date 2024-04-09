int bWidth, bHeight;

Brick[][] bricks;
Paddle paddle;
Ball ball;

void setup(){
  size(800,950);
 

  bWidth = 9;
  bHeight = 3;
  bricks = new Brick[bWidth][bHeight];
  paddle = new Paddle();
  ball = new Ball();
  
  for (int i = 0; i < bWidth; i++){
    for (int j = 0; j < bHeight; j++){
      bricks[i][j] = new Brick(10+88*i,160+40*j);
    }
  }
}

void draw(){
   background(0);
  for (int i = 0; i < bWidth; i++){
    for (int j = 0; j < bHeight; j++){
      bricks[i][j].render();
      
    }
  }
  paddle.Display();
  ball.Display();
}

void keyPressed(){
  
  if (key == CODED) {
    if (keyCode == RIGHT) {
      paddle.x-=10;
    } else if (keyCode == LEFT) {
      paddle.x+=10;
    } 
  
}
}
