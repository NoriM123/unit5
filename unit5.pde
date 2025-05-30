//pong

int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;
final int GAMEOVER2 = 5;

float leftx, lefty, leftd, rightx, righty, rightd;
float ballx, bally, balld;

boolean wkey, skey, upkey, downkey;

float vx = random(5, -5);
float vy = random(-5, 5);
boolean = AI;


int leftscore, rightscore, timer;

void setup() {
  size(800, 600, P2D);

  leftx = 0;
  lefty = height/2;
  leftd = 150;

  rightx = width;
  righty = height/2;
  rightd = 150;

  //initial ball
  ballx = width/2;
  bally = height/2;
  balld = 50;

  wkey = skey = upkey = downkey = false;

  rectMode(CENTER);
  mode = INTRO;

  wkey = skey = upkey = downkey = false;
  timer = 150;

}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == GAMEOVER2) {
    gameover2();
  } else {
    println("Mode Error" + mode);
  }
}
