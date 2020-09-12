int startX = 0;
int startY = 150; 
int endX = 0;
int endY = 150;
int width = 750;
int height = 250;

void setup(){
  save("lightning");
  size(750,250);
  strokeWeight(2);
  background(0,0,0);
}

void draw(){
  int a = 1;
  
  endX = startX + (int) (Math.random() * 10);
  endY = startY + (int) (Math.random() * 18) - 9;
  
  //grid
  stroke(0, 255, 0, 2);
  strokeWeight(1);
  while (a < 40) {
    line(a * 20, 0, a * 20, height);
    line(0, a * 20, width, a * 20);
    a = a + 1;
  }

//diffrent parts that make up one lightning bolt  
  stroke(0, 255, 0, 32);
  strokeWeight((int)(Math.random()*16+9));
  line (startX, startY, endX, endY);
  
  stroke(64, 64, 255, 32);
  strokeWeight((int)(Math.random()*10+4));
  line (startX, startY, endX, endY);
  
  stroke(128, 128, 255, 32);
  strokeWeight((int)(Math.random()*7+2));
  line (startX, startY, endX, endY);
  
  stroke(255, 255, 255, 255);
  strokeWeight((int)(Math.random()*3+1));
  line (startX, startY, endX, endY);
  
  startX = endX;
  startY = endY;
  backgroundFade();
  //restart the moving line when hitting edge
  if (startX > width || startY < 0 || startY > height) {
    startX = 0;
    startY = 150;
    endX = 0;
    endY = 150;
  }
}
//clears the previous line from screen
void backgroundFade() {
  rect(0, 0, width, height);
  fill(0, 10);
}
