void pause() {
  background(0);
  fill(255);
  textSize(40);
  text("PAUSED", width/2-65, height/4);
  circle(width/2, height/2, 100);
  rect(width/2, 7*height/9, width/2, 100, 10);
  player.pause();
  fill(0);
  text("RESET", width/2, 7*height/2);
  triangle(width/2-7, height/2+10, width/2-7, height/2-10, width/2+13, height/2);
}

void pauseClicks() {
  if (dist(width/2, height/2, mouseX, mouseY) < 50) {
    mode = GAME;
  }

  if (mouseX > width/2 - width/2 && mouseX < width/2 + width/2 && mouseY < 7*height/9 +50 && mouseY >7*height/9 -50) {
    mode = INTRO;
    rightscore = 0;
    leftscore = 0;
    resetServe();
  }
}
