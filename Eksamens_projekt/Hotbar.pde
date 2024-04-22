class Hotbar {
 //attributes
 float x, y;
 
 
 //construkter
 Hotbar(float setX, float setY){
    x = setX;
    y = setY;
 }
 
 void Display(){
  fill(128);
  rect(x, y, 801, 75); 
  fill(255);
 }
}
