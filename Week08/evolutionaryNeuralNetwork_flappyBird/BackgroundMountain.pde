

void backgroundMountain(int idx) {
  PVector[] pv = new PVector[width];

  //pv[0] = new PVector(0, height);
  for (int i = 0; i < width; i ++) {
    float scl = 200*map(idx, 1, 5, 2, 1);
    float mountainHeight = (noise(i*0.002*(6-idx)+counter*0.001*idx) - 0.5)*scl + height*(0.5+0.05*idx);
    pv[i] = new PVector(i, mountainHeight);
  }
  //pv[width+2] = new PVector(width, height);


  //stroke(255);
  //noFill();
  noStroke();
  fill(map(idx, 1, mountainLayers+1, 175, 75));

  beginShape();
  vertex(0, height);
  for (int i = 0; i < pv.length; i ++) {
    vertex(pv[i].x, pv[i].y);
  }
  vertex(width, height);
  endShape();
}
