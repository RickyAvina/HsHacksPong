
class Paddle1 {

  // Global Variables
  color x;
  int Paddle1_x = width - 60;
  int Paddle1_y = height/2;
  
  // Constructor 

  Paddle1(color c) {
    x = c;
  }

  // Methods
 void run(){
   display();
   move();
 }
  void display() {
    fill(x);
    rect(Paddle1_x, Paddle1_y, 30, 80);
  }
  void move(){
    Paddle1_x = width-60;
    Paddle1_y = mouseY;
  }
}


