void setup() {
  size(500,1000);
  background(0,0,0);
}
void draw() {
  fill(mouseY,mouseX,255);
  ellipse(mouseX,mouseY,75,75);
}
  