class Brick {
 //attributes
 float x, y;
 
 int hp = 1;
 
 //construkter
 Brick(float setX, float setY){
    x = setX;
    y = setY;
 }
 
 
 void render(){
  rect(x, y, 75, 25); 
 }


 
}
