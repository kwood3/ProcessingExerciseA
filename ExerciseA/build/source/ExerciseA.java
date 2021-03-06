import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class ExerciseA extends PApplet {

public void setup() {
   //size of the canva
}
public void draw(){
  background(0,100,200); // (r,g,b)

  /* Sun */
  fill(244, 232, 66);
  ellipse(190,500,250,250);

  /* Grass */
  fill(0,200,50);
  rect(0,500,1000,500); // (x,y,w,h)

  /* House */
  //red rect
  fill(200,20,0);
  rect(550,520,100,70);

  //triangle
  fill(0,0,0);
  triangle(550,520,650,520,600,480); //(x1, y1, x2, y2, x3, y3)

}
  public void settings() {  size(1000,1000); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "ExerciseA" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
