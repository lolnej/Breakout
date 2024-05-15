void points(){
  textSize(40);
  text("score", 50,50);
  text(score, 175,50);
  
}

void brokenBricks(){
  textSize(40);
  text("Bricks Broken", 280,50);
  text(brokenBricks, 540,50);
}

void hp (){
  textSize(40);
  text("hp", 650, 50);
  text(nf(ball.playerhp+0.1,0,0),720,50);
}

void Speed(){
  textSize(40);
  text("Speed", 50,925);
  text(nf(speed,0,2), 200,925);
}
