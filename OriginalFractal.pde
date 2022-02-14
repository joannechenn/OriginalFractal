int firstColor = 0;
int secondColor = 0;
int thirdColor = 0;

public void setup(){
  size(500, 500);
  rectMode(CENTER);
  ellipseMode(CENTER);
}


public void draw(){
  background(0);
  fill(firstColor, secondColor, thirdColor);
  stroke(255);
  myFractal(250, 250, 450);
}


public void mouseClicked(){
  firstColor = (int)(Math.random() * 101) + 110;
  secondColor = (int)(Math.random() * 101) + 110;
  thirdColor = (int)(Math.random() * 101) + 110;
}


public void myFractal(int x, int y, int z){
  rect(x, y, z, z);
  ellipse(x, y, z, z);
  
  if(z > 20){
    myFractal(x + (z/4), y + (z/4), z/2);
    myFractal(x - (z/4), y - (z/4), z/2); 
    
    myFractal(x + (z/8), y + (z/8), z/5);
    myFractal(x - (z/8), y - (z/8), z/5);
    
    myFractal(x + (z/4), y - (z/4), z/2);
    myFractal(x - (z/4), y + (z/4), z/2);
    
    myFractal(x + (z/8), y - (z/8), z/5);
    myFractal(x - (z/8), y + (z/8), z/5);
    
    myFractal(x, y, z/6);
  }
}
