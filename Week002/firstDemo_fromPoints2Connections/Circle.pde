class Circle {
  //成员变量
  float cX, cY;
  float speedX, speedY;
  float dia;
  color fC;
  //构造函数
  Circle(float x, float y, float d) {
    cX = x;
    cY = y;
    dia = d;
    speedX = random(4);
    speedY = random(4);
    fC = color(random(255), random(255), random(255));
  }

  //方法
  void show() {
    fill(fC);
    noStroke();
    ellipse(cX, cY, dia, dia);
  }

  void move() {
    cX += speedX;
    cY += speedY;
  }

  void edge() {
    if (cX-dia/2>width) cX=-dia/2;
    if (cX<-dia/2) cX=width+dia/2;
    if (cY-dia/2>height) cY=-dia/2;
    if (cY<-dia/2) cY=height+dia/2;
  }

  void connection() {
    for (int idx = 0; idx < cls.length; idx ++) {
      if (cls[idx] != this) {
        float dst = dist(cls[idx].cX, cls[idx].cY, cX, cY);
        if (dst <= threshold) {
          float wt = map(dst, 0, threshold, 20, 1);
          strokeWeight(wt);
          float sc = map(dst, 0, threshold, 0, 255);
          stroke(sc);
          line(cls[idx].cX, cls[idx].cY, cX, cY);
        }
      }
    }
  }
}
