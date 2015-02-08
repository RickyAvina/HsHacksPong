class Ball {

  //global variables
  float xpos = width/2;
  float ypos = height/2;
  float xspeed = 1.5;
  float yspeed = random(2);
  float ballwh = 30;

  //constructor
  Ball () {
  }

  //functions
  void run() {
    display();
    move();
    bounce();
    collision();
  }

  void display() {
    fill(0);
    ellipse(xpos, ypos, 30, 30);
  }

  void move() {
    xpos += xspeed;
    ypos += yspeed;
  }

  void bounce() {
    if (xpos + (ballwh/2) >= width || xpos - (ballwh/2) <= 0) {
      xspeed *= -1;
    }

    if (ypos + (ballwh/2) >= height || ypos - (ballwh/2) <= 0) {
      yspeed *= -1;
    }
  }

  void collision() {
    // Paddle 1 (Right Paddle)
    if ((xpos > width - 80) && (xpos < width - 30)) {
      if ((ypos > myPaddle.Paddle1_y) && (ypos < myPaddle.Paddle1_y + 80)) {
        xspeed*=-1;
      }
    }
    
    if(xpos < 100){
      xspeed*=-1;
    }
  }
}

