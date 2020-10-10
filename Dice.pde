int sumNum = 0;
int scaleX = 1500;
int scaleY = 1000;
int diceSize = scaleY/90;

void setup(){
   textSize(9);
   noLoop();
   size(1500, 1000);
   frameRate(10);
}

void draw(){
  sumNum = 0;
  background(200);
   for(int y = ((int)(scaleY/30)); y <= scaleY - ((int)(scaleY/20)); y += ((int)(scaleY/90))){     
     for(int x = ((int)(scaleX/30)); x <= scaleX - ((int)(scaleX/20)); x += ((int)(scaleX/150))){
       Die pop = new Die(x, y);
       pop.show();
    }
  }
  if (mousePressed && mouseButton == LEFT)
    noLoop();
  text("Sum: " + sumNum, scaleX/2 - 50, scaleY - 15);
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
