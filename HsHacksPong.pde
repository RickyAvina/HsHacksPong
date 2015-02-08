import controlP5.*;
Paddle1 myPaddle;
Paddle2 yourPaddle;
Ball mainBall;

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

}


