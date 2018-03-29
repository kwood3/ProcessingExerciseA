void setup() {
  size(500, 650);
  background(255);
  colorMode(HSB, 255, 5, 270);
}
void draw() {
  /* Circle Grid */
  for (int x = 10; x < width; x = x+21) {
    for (int y= 0; y < (height/2.5); y = y+21) {
      fill(y % 255, x, 255);
      ellipse(x, y, 20, 20);
    }
  }
  /* Radial Gradient Circle */
  for (int c = 222; c > 0; c--) {
    noStroke();
    fill(10 + c % 255, 10 + c % 255, 255);
    ellipse(250, 450, c, c);
  }
}
