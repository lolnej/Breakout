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
   x+=vx;
   y+=vy;
  
  
 }
 void Display(){
   circle(x,y,20);
 }
}
