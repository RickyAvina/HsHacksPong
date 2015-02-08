
class Paddle2 {

  // Global Variables
  color x;
  int Paddle2_x =  60;
  int Paddle2_y = height/2;

  // Constructor 

  Paddle2(color c) {
    x = c;
  }

  // Methods
  void run() {
    display();
    move();
  }
  void display() {
    fill(x);
    rect(Paddle2_x, Paddle2_y, 30, 80);
  }

  void move() {
    // Paddle 2
    if (key == 'w') {
      yourPaddle.Paddle2_y-=3;
    }
    if (key == 's') {
      yourPaddle.Paddle2_y+=3;
    }


    if (Paddle2_y < 0) {
      Paddle2_y = 0;
    } 
    if (Paddle2_y > height - 80) {
      Paddle2_y = height- 80;
    }
  }
}

