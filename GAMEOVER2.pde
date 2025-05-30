void gameover2() {
  background(0);
  textSize(40);
  fill(255);

  text("RIGHT WON", width/2-88, 100);

  circle(width/2, height/2, 100);
  fill(0);
  triangle(width/2-7, height/2+10, width/2-7, height/2-10, width/2+13, height/2);
}

void gameover2Clicks() {
  if (dist(width/2, height/2, mouseX, mouseY) < 50) {
    mode = INTRO;
    leftscore = 0;
    rightscore = 0;
    resetServe();
  }
}
