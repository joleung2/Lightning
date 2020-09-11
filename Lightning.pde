import java.lang.Math;
float startX = random(0, 300);
float startY = 0;
float endX = 0;
float endY = 0;
float lineThick = 5;
int randomWithRange(int min, int max) {
  int range = (max - min) + 1;     
  return (int)(Math.random() * range) + min;
}
void setup()
{
  size(300, 300);
  noStroke();
  background(#190064);
  strokeWeight(5);
  stroke(#FFFFFF);
}
void draw() {
  while (startY < 300) {
    endX = startX + randomWithRange(-10, 10);
    endY = startY + randomWithRange(0, 10);
    stroke(255, 255, 255, 50);
    strokeWeight(10);
    line(startX, startY, endX, endY);
    stroke(255, 255, 255, 100);
    strokeWeight(5);
    line(startX, startY, endX, endY);
    stroke(255, 255, 255, 255);
    strokeWeight(3);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}
void mousePressed()
{
  background(#190064);
  startX = mouseX;
  startY = 0;
  endX = 0;
  endY = 0;
  stroke(255, 255, 255, 1);
  while (startY < 300) {
    endX = startX + randomWithRange(-10, 10);
    endY = startY + randomWithRange(0, 10);
    stroke(255, 255, 255, 50);
    strokeWeight(10);
    line(startX, startY, endX, endY);
    stroke(255, 255, 255, 100);
    strokeWeight(5);
    line(startX, startY, endX, endY);
    stroke(255, 255, 255, 255);
    strokeWeight(3);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}
