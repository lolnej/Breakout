int bWidth, bHeight;

Brick[][] bricks;
Paddle paddle;
Ball ball;
Hotbar hotbar;
Boolean held;
Boolean held1;
void setup(){
  size(800,950);
   held=false;
   held1=false;
  
  bWidth = 9;
  bHeight = 3;
  bricks = new Brick[bWidth][bHeight];
  paddle = new Paddle();
  ball = new Ball();
  hotbar = new Hotbar(20,30);
  
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
  ball.updatePosition();
  ball.checkCollisions();
  
  if(held && paddle.x < width-100){
  paddle.x+=10;
  }
  if(held1 && paddle.x > 0){
  paddle.x-=10;
  }
}

void keyPressed(){
  
  if (key == CODED) {
    if (keyCode == RIGHT) {
      held=true;
    } else if (keyCode == LEFT) {
      held1=true;
    } 
  
}
}

void keyReleased(){
if (key == CODED) {
    if (keyCode == RIGHT) {
      held=false;
    } else if (keyCode == LEFT) {
      held1=false;
    } 
  
}

}
