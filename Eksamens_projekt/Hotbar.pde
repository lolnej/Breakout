class Hotbar {
 //attributes
 float x, y;
 
 
 //construkter
 Hotbar(float setX, float setY){
    x = setX;
    y = setY;
 }
 
 void render(){
  rect(x, y, 800, 75); 
 }
}
