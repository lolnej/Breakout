class Paddle{
 int x,w;
 
 Paddle(){
   x=width/2-50;
   w=100;
 }
 
 void Display(){
 rect(x,800,w,20);
 
  }
}

class Ball{
  float x,y;
  float vx,vy;
  
 Ball(){
   
   x=width/2;
   y=790;
   vx=random(-2,2);
   vy=random(-3,-5);
  
  
 }
 void Display(){
   circle(x,y,20);
 }
 void updatePosition(){
   x+=vx;
   y+=vy;
}
void checkCollisions(){
  if (x > width-10 || x < 10){
  vx*=-1;
  
}
  if (y < 10+75 || y > height-10-75){
  vy*=-1;
}
//paddle and ball collision
PVector test = new PVector(x, y).add(new PVector(0, vy));
PVector testx = new PVector(x, y).add(new PVector(vx, 0));
 if (testx.y+10 > 800 && testx.y-10 < 820 && testx.x+10 > paddle.x && testx.x-10 < paddle.x+100){
   if (testx.x > paddle.x+paddle.w/2){
     x = paddle.x+paddle.w+10;
     vx*=-1;
   } else if (testx.x < paddle.x+paddle.w/2){
     x = paddle.x-10;
     vx*=-1;
   }
  
 } else if (test.y+10 > 800 && test.y-10 < 820 && test.x+10 > paddle.x && test.x-10 < paddle.x+100){
   vy*=-1;
  
 }
}
}
