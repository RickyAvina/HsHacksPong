import controlP5.*;
Paddle1 myPaddle;
Paddle2 yourPaddle;
Ball mainBall;
int scoreLeft = 0;
int scoreRight = 0;

void setup(){
  size(900, 600);
 frameRate(1000000);
 
  mainBall = new Ball();
  myPaddle = new Paddle1(color(random(255), random(255), random(255)));
  yourPaddle = new Paddle2(color(random(255), random(255), random(255)));
}

void draw(){
  background(100);
  myPaddle.run();
  yourPaddle.run();
  mainBall.run();
  score();
}

void score(){
  if (mainBall.xpos <= 30){
    scoreLeft ++;
  }
  if (mainBall.xpos >= width - 30){
    scoreRight++;
  }
  fill(255);
  text(scoreLeft, 60, height - 30);
  text(scoreRight, width - 30, height - 20);
}



