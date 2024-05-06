void points(){
  textSize(40);
  text("score", 50,50);
  text(points, 175,50);
  
}

void brokenBricks(){
  textSize(40);
  text("Bricks Broken", 250,50);
  text(brokenBricks, 500,50);
}

void Speed(){
  textSize(40);
  text("Speed", 50,925);
  text(nf(speed,0,2), 200,925);
}
