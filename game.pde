void game() {
  background(255);
  //pausebutton
  fill(0);
  circle(20, 20, 20);
  
  fill(255);
  noStroke();
  rect(17, 20, 3, 10, 5);
  rect(23, 20, 3, 10, 5);
}

void gameClicks() {
  if(dist(20, 20, mouseX, mouseY) < 10) {
  mode = PAUSE;
  }
}
