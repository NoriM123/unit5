void game() {
  background(255);
  paddleleft();
  paddleright();
  baller();
  pausebutton();
  
  if (wkey == true) lefty = lefty - 5;
  if (skey == true) lefty = lefty + 5;
  
}

void gameClicks() {
  if (dist(20, 20, mouseX, mouseY) < 10) {
    mode = PAUSE;
  }
}
 
////////////////////////////////////////////////////////////

void pausebutton() {
  //pausebutton
  fill(0);
  circle(20, 20, 20);

  fill(255);
  noStroke();
  rect(17, 20, 3, 10, 5);
  rect(23, 20, 3, 10, 5);
}

void paddleleft() {
  fill(0);
  circle(leftx, lefty, leftd);
}

void paddleright() {
  fill(0);
  circle(rightx, righty, rightd);
}

void baller() {
  fill(0);
  circle(ballx, bally, balld);
}
