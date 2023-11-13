Circle[] cls;
int num = 500;
float threshold = 40;

void initiate() {
  cls = new Circle[num];

  for (int idx = 0; idx < cls.length; idx ++) {
    //Circle(float x, float y, float d)
    float xx = random(width);
    float yy = random(height);
    float dd = random(5, 10);
    cls[idx] = new Circle(xx, yy, dd);
  }
}

void setup() {
  size(600, 600);
  background(255);

  initiate();

  //for (int idx = 0; idx < cls.length; idx ++) {
  //  cls[idx].show();
  //}

  //for(int idx = 0; idx < 10; idx ++){
  //  float xx = random(width);
  //  float yy = random(height);
  //  float dd = random(10, 50);
  //  noStroke();
  //  fill(random(255), random(255), random(255));
  //  ellipse(xx, yy, dd, dd);
  //}
}

void draw() {
  background(255);
  //fill(255, 10);
  //rect(0,0,width,height);
  
  for (int idx = 0; idx < cls.length; idx ++) {
    cls[idx].move();
    cls[idx].edge();
    
    cls[idx].connection();
    cls[idx].show();
  }
}

void keyPressed() {
  if (key == 'r') {
    initiate();
  }
}
