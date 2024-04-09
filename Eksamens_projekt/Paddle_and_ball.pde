class Paddle{
 int x,y;
 
 Paddle(){
   x=width/2-50;
   
 }
 
 void Display(){
 rect(x,800,100,20);
 
  }
}

class Ball{
  float x,y;
  float vx,vy;
  
 Ball(){
   
   x=width/2;
   y=790;
   vx=random(-1,1);
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
  if (y < 10 || y > height-10){
  vy*=-1;
  
}
}
}
