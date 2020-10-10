int sumNum = 0;
int scale = 2000;
int diceSize = scale/90;

void setup(){
   textSize(9);
   noLoop();
   size(1000, 1000);
   frameRate(10);
}

void draw(){
  sumNum = 0;
  background(200);
   for(int y = ((int)(scale/30)); y <= scale - ((int)(scale/20)); y += ((int)(scale/90))){     
     for(int x = ((int)(scale/30)); x <= scale - ((int)(scale/20)); x += ((int)(scale/90))){
       Die pop = new Die(x, y);
       pop.show();
    }
  }
  if (mousePressed && mouseButton == LEFT)
    noLoop();
  text("Sum: " + sumNum, scale/2 - 50, scale - 15);
}

void mousePressed(){
  loop();
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
    rect(myX, myY, diceSize, diceSize, 10);
    fill(255);
    text(num, myX + (diceSize/2 - 3), myY + (diceSize/2 + 5));
    sumNum += num;
  }
}
