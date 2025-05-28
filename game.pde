void game() {
  background(255);
  paddleleft();
  paddleright();
  baller();
  pausebutton();
  lines();
  
  scoreboard();

  if (wkey == true) lefty = lefty - 5;
  if (skey == true) lefty = lefty + 5;

  if (upkey == true) righty = righty - 5;
  if (downkey == true) righty = righty + 5;

  //scoring
  
  if (ballx < 0) {
    rightscore = rightscore + 1;
    ballx = width/2;
    bally = height/2;
  }
  
  if (ballx > width) {
    leftscore = leftscore + 1;
    ballx = width/2;
    bally = height/2;
  }
  
  if (leftscore > 4) {
    mode = GAMEOVER;
  }
  
  if (rightscore > 4) {
   mode = GAMEOVER2; 
  }


  //movement

  ballx = ballx + vx;
  bally = bally + vy;

  //collisions

  //vx = bx - px
  //vy = py - bx
  //float  vx = (ballx - rightx)/10;
  //float  vy = (bally - righty)/10;

  if (dist(rightx, righty, ballx, bally) <= rightd/2 + balld/2) {
    vx =  (ballx-rightx)/10;
    vy =  (bally - righty)/10;
  }

  if (dist(leftx, lefty, ballx, bally) <= leftd/2 + balld/2) {
    vx =  (ballx-leftx)/10;
    vy =  (bally-lefty)/10;
  }

  if (bally <= 25) {
    vy = vy * -1;
    bally = 25;
  }

  if (bally >= height-25) {
    vy = vy * -1;
    bally = height-25;
  }

  //collisions
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

void lines() {
  fill(0);
  stroke(0);
  strokeWeight(5);
  line(width/2, 0, width/2, height);
}

void scoreboard() {
  textSize(40);
  fill(0);
  text(leftscore, width/4, 70);
  text(rightscore, 3*width/4, 70);
}
