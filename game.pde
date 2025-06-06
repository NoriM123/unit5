boolean ballMoving = false;

void game() {
  background(255);
  paddleleft();
  paddleright();
  baller();
  pausebutton();
  timer();
  lines();
  player.play();
  scoreboard();

    if (wkey == true && lefty  >  105) lefty = lefty - 5;
    if (skey == true && lefty  < height-105) lefty = lefty + 5;
  if (AI == false) {
    if (upkey == true && righty >  105 )  righty = righty - 5;
    if (downkey == true && righty < height-105) righty = righty + 5;
  } else {
    if (ballx > width/2) {
     if (bally > righty) {
       righty = righty + 5;
     }
     if (bally < righty) {
       righty = righty - 5;
     } 
  }
  //scoring
  }
  if (ballx < 0) {
    rightscore = rightscore + 1;
    ballx = width/2;
    bally = height/2;
    vx = random(5, -5);
    vy = random(-5, 5);
  }

  if (ballx > width) {
    leftscore = leftscore + 1;
    ballx = width/2;
    bally = height/2;
    vx = random(5, -5);
    vy = random(-5, 5);
  }

  if (leftscore > 4) {
    mode = GAMEOVER;
  }

  if (rightscore > 4) {
    mode = GAMEOVER2;
  }
  if (timer > 0) {
    ballx = width/2;
    bally = height/2;
  } else {
    if (ballMoving == false) {
      vx = random(-5, 5);
      vy = random(-5, 5);
      ballMoving = true;
    }
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

void timer() {
  // fill(0);
  // textSize(40);
  // text(timer, width/2-10, 70);
  timer = timer - 1;
}

void resetServe() {
  ballx = width/2;
  bally = height/2;
  timer = 150;
  ballMoving = false;
}
