void pause() {
  background(0);
  fill(255);
  textSize(40);
  text("PAUSED", width/2-65, height/4);
  circle(width/2, height/2, 100);
  
  fill(0);
  triangle(width/2-7, height/2+10, width/2-7, height/2-10, width/2+13, height/2);
}

void pauseClicks() {
  if (dist(width/2, height/2, mouseX, mouseY) < 50) {
   mode = GAME;     
  }
}
