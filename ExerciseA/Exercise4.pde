/*Declaring Variables*/

float e1Size = 20;//ellipse #1size
float e2Size = 20;//ellipse #2 size
int e1y = 0; //ellipse#1 y value, This circle comes down from top
int e2x = 0; //ellipse#2 x value, This circle moves right from the left
float sizeIncreaseE1 = 0.2; //size Increase for e1
float sizeIncreaseE2= 0.09; //size Increase for e2
float r = 0; //red value for ellipse
float g = 0; //green value for ellipse

void setup() {
  size(500, 1000);
  background(0, 0, 0);
  e2x = 0;
  e1y = 0;
  noStroke();
  colorMode(HSB, 240, 20, 10);
}

void draw() {
  //rainbow effect & ellipses
  r += 2.8;
  g += .7;
  fill(r % 255, g % 255, 100);
  ellipse(250, e1y, e1Size, e1Size);
  ellipse(e2x, 500, e2Size, e2Size);
  
  //movement
  e2x++;
  e1y++;
  e1Size = e1Size + sizeIncreaseE1;
  e2Size = e2Size + sizeIncreaseE2; 

  /* if statement that resets screen */
  if (e2x > 500 & e1y > 1000) {
    background(0);
    println("done", "ellipse #1 y=", e1y, "ellipse #2 x=", e2x, "e1Size =", e1Size, "e2Size =", e2Size);
    setup();
    e2x = 0;
    e1y = 0;
    e1Size = 20;
    e2Size = 20;
  }
}