//lightning bolt coordinates
int startX = 0;
int startY = 150; 
int endX = 0;
int endY = 150;
//screen size
int width = 750;
int height = 250;
//variables for colors
int r = 0;
int r1 = 66;
int r2 = 128;
int g = 255;
int g1 = 255;
int g2 = 255;
int b = 0;
int b1 = 66;
int b2 = 66;

void setup(){
  save("lightning");
  size(750,250);
  strokeWeight(2);
  background(0,0,0);
}

void draw(){
  int a = 1;
  
  endX = startX + (int) (Math.random() * 18);
  endY = startY + (int) (Math.random() * 18) - 9;
  
  //grid
  stroke(r, g, b, 3);
  strokeWeight(1);
  while (a < 40) {
    line(a * 20, 0, a * 20, height);
    line(0, a * 20, width, a * 20);
    a = a + 1;
  }

//diffrent parts that make up one lightning bolt  
  stroke(r, g, b, 30);
  strokeWeight((int)(Math.random()*16+9));
  line (startX, startY, endX, endY);
  
  stroke(r1, g1, b1, 40);
  strokeWeight((int)(Math.random()*10+4));
  line (startX, startY, endX, endY);
  
  stroke(r2, g2, b2, 50);
  strokeWeight((int)(Math.random()*7+2));
  line (startX, startY, endX, endY);
  
  stroke(255, 255, 255, 255);
  strokeWeight(2);
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

void mousePressed(){
r = (int) (Math.random() * 5 +250);
g = (int) (Math.random() * 5 +250);
b = (int) (Math.random() * 5 +250);

//color of lightning bolt and grid
if (r > g && r > b){
  g = 0;
  b = 0;
  g1 = 66;
  b1 = 66;
  g2 = 128;
  b2 = 128;
}else if (g > r && g > b){
  r = 0;
  b = 0;
  r1 = 66;
  b1 = 66;
  r2 = 128;
  b2 = 128;
}else{
  r = 0;
  g = 0;
  r1 = 66;
  g1 = 66;
  r1 = 128;
  g1 = 128;
}
}
