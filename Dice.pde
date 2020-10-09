int sumNum = 0;

void setup(){
   noLoop();
   size(500, 500);
}

void draw(){
  sumNum = 0;
  background(200);
   for(int y = 50; y <= 400; y += 100){     
     for(int x = 50; x <= 400; x += 100){
       Die pop = new Die(x, y);
       pop.show();
    }
  }
  text("Sum: " + sumNum, 210, 450);
}

void mousePressed(){
  redraw();
}

class Die {
  int num, myX, myY;

  Die(int x, int y) { 
   roll();
   myX = x;
   myY = y;
}

  void roll() {
   num = (int)(Math.random() * 7);
}

  void show() {
    noStroke();
    fill((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
    rect(myX, myY, 70, 70, 10);
    fill(255);
    text(num, myX + 33, myY + 38);
    sumNum += num;
  }
}
