void intro() {
  background(0);
  fill(255);
  rect(400, 90, width, 70);
  rect(width/4, height/2, 200, 100, 20, 20, 20, 20);
  rect(width*3/4, height/2, 200, 100, 20, 20, 20, 20);
  textSize(30);
  fill(0);
  text("PONG", width/2-32, 100);
  textSize(25);
  text("Single Player", 134, height/2 +7);
  text("2 Player", 560, height/2+7);
}


void introClicks() {
  //single player
  if (mouseX > width*3/4-100 && mouseX < width*3/4+100 && mouseY < height/2 +50 && mouseY > height/2-50) {
    mode = GAME;
    AI = false;
  }

  if (mouseX > width/4 -100 && mouseX < width/4 + 100 && mouseY < height/2 +50 && mouseY > height/2 -50) {
    AI = true;
  }
}
