// all the global variables we need
//list of the random colors it can choose from
color[] colorlist = {#FFA0A7};
    
float[] coords = {-105,0,0,-55,0,0,0,0};

int drawcount = 0;
int downcount = 0;

class Trapezoid {
  color c;
  float x1;
  float x2;
  float x3;
  float x4;
  float y1;
  float y2;
  float y3;
  float y4;
  float t;
  
  Trapezoid(color tempc, float tempt, float tempx1, float tempy1, float tempx2, 
      float tempy2, float tempx3, float tempy3, float tempx4, float tempy4) {
    c = tempc;
    x1 = tempx1;
    x2 = tempx2;
    x3 = tempx3;
    x4 = tempx4;
    y1 = tempy1;
    y2 = tempy2;
    y3 = tempy3;
    y4 = tempy4;
    t = tempt;
  }
  
  void display() {
    stroke(c,t);
    fill(c,t);
    quad(x1,y1,x2,y2,x3,y3,x4,y4);
  }
  
  void tintit() {
   if (t > 0) {
     t = t - 100;
  }
  }
}

//cool this is for first impressions
void setup(){
  frameRate(7);
  size(1050,550);
  background(#000000);   
    
} 

//and then we draw it
void draw(){
  
    if (drawcount < 45) {
      if (drawcount > 43){
        drawcount = 0;
        
        coords[0] = -105;
        coords[1] = 0;
        coords[2] = 0;
        coords[3] = -55;
        coords[4] = 0;
        coords[5] = 0;
        coords[6] = 0;
        coords[7] = 0;
        
        //pick a random color from the color list
        int index = int(random(colorlist.length));  // Same as int(random(4))
    
        Trapezoid trap = new Trapezoid(colorlist[index], 255, coords[0], coords[1], coords[2], coords[3],
            coords[4], coords[5], coords[6], coords[7]);
        
        trap.display();
        filter(BLUR, 4);
        
        /*
        Trapezoid trap2 = new Trapezoid(colorlist[index], 150, coords[0], coords[1], coords[2], coords[3],
          coords[4], coords[5], coords[6], coords[7]);
          
        trap2.display();
        //filter(BLUR, 4);
          
        Trapezoid trap3 = new Trapezoid(colorlist[index], 200, coords[0], coords[1], coords[2], coords[3],
          coords[4], coords[5], coords[6], coords[7]);
          
        trap3.display();
        //filter(BLUR, 4);
          
        Trapezoid trap4 = new Trapezoid(colorlist[index], 255, coords[0], coords[1], coords[2], coords[3],
          coords[4], coords[5], coords[6], coords[7]);
          
        trap4.display();
        //filter(BLUR, 4);
        */
    
    /*
        fill(0, 15);
        rect(0, 0, width, height);
        fill(0, 15);
        rect(0, 0, width, height);
        fill(0, 15);
        rect(0, 0, width, height);
        fill(0, 15);
        rect(0, 0, width, height);
        fill(0, 15);
        rect(0, 0, width, height);
        fill(0, 15);
        rect(0, 0, width, height);
        
        */
        
        coords = nextRectangle(coords);
        drawcount = drawcount + 1;
        } else {
      //pick a random color from the color list
      int index = int(random(colorlist.length));  // Same as int(random(4))
    
      Trapezoid trap = new Trapezoid(colorlist[index], 60, coords[0], coords[1], coords[2], coords[3],
          coords[4], coords[5], coords[6], coords[7]);
        
      trap.display();
      //filter(BLUR, 4);
      
      Trapezoid trap2 = new Trapezoid(colorlist[index], 150, coords[0], coords[1], coords[2], coords[3],
          coords[4], coords[5], coords[6], coords[7]);
          
      trap2.display();
      //filter(BLUR, 4);
          
      Trapezoid trap3 = new Trapezoid(colorlist[index], 200, coords[0], coords[1], coords[2], coords[3],
          coords[4], coords[5], coords[6], coords[7]);
          
      trap3.display();
      //filter(BLUR, 4);
          
      Trapezoid trap4 = new Trapezoid(colorlist[index], 255, coords[0], coords[1], coords[2], coords[3],
          coords[4], coords[5], coords[6], coords[7]);
          
      trap4.display();
      //filter(BLUR, 4);
    
      fill(0, 15);
      rect(0, 0, width, height);
      fill(0, 15);
      rect(0, 0, width, height);
      fill(0, 15);
      rect(0, 0, width, height);
      fill(0, 15);
      rect(0, 0, width, height);
      fill(0, 15);
      rect(0, 0, width, height);
      fill(0, 15);
      rect(0, 0, width, height);
        
      coords = nextRectangle(coords);
      drawcount = drawcount + 1;
    }
    
    }
  
} 

float[] nextRectangle(float[] list){
  float[] newCoords = {list[0] + 105, list[1], list[2], list[3]+ 55, list[4], list[5] + 55, list[6] + 105, list[7]};
  return newCoords;
}

//unused, rip, here for legacy
float[] prevRectangle(float[] list){
  float[] newCoords = {list[0] - 105, list[1], list[2], list[3]- 55, list[4], list[5] - 55, list[6] - 105, list[7]};
  return newCoords;
}