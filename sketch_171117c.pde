int n = 600; // 線條數量
float[] x = new float[n];
float[] y = new float[n];
float[] speed = new float[n];
float[] size = new float[n];
float[] br = new float[n];
color[] cc = new color[n];

PImage img;

void setup(){
  size(1024, 768, P2D);
  background(0);
  img = loadImage("Tulips.jpg");
  for (int i = 0; i < n; i++){
    x[i] = random(width);
    y[i] = -random(100);
    speed[i] = random(1,15);
    size[i] = random(10,50);
    br[i] = random(100,255);
  }
}

void draw(){
  //background(0);
  //noStroke();
  //fill(0,20);
  //rect(0, 0, width, height);
  
  //image(img, 0, 0);
  
  for (int i = 0; i < n; i++){
    //noStroke();
    color c1 = img.get((int)x[i], (int)y[i]);
    //fill(c1, br[i]);
    stroke(c1, br[i]);
    strokeWeight(4);
    line(x[i] + random(5), y[i], x[i], y[i] + size[i]);
    
    y[i] += speed[i];
  
    if (y[i] > height){
      y[i] = -random(50);
      x[i] = random(width);
      speed[i] = random(1,15);
    }
  }
  //noCursor();
}

void keyPressed(){
 if (key == 'b'){
   background(0); // clean = create a new background 
 } 
 if (key == 's'){
   save("a1.png"); // put in "project name"
 }

}
