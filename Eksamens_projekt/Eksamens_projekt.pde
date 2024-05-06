int bWidth, bHeight;
int score, brokenBricks, brickHits, brickhp;

Brick[][] bricks;
Paddle paddle;
Ball ball;
Hotbar hotbarT;
Hotbar hotbarB;
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
  hotbarT = new Hotbar(-1,0);
  hotbarB = new Hotbar(-1,height-75);
  score = 0;
  brokenBricks = 0;
  brickHits = 0;
  brickhp = 1;
  
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
      
     if (bricks[i][j].hp > 0){
      bricks[i][j].render();
   
       if ( ball.y > bricks[i][j].y-10 && ball.y < bricks[i][j].y+35 && ball.x > bricks[i][j].x-10 && ball.x < bricks[i][j].x+85 ){
        bricks[i][j].hp--;
        ball.vy*=-1;
        brickHits++;
        brokenBricks=+ brickHits/brickhp;
        score = score + brokenBricks; 
      }
      }
    }
  }
  paddle.Display();
  ball.Display();
  hotbarT.Display();
  hotbarB.Display();
  ball.updatePosition();
  ball.checkCollisions();
  points();
  brokenBricks(); 
  hp();
    
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
