void setup() {
  size(500, 500);
  noLoop(); 
}

void draw() {
  background(255);
  myFractal(250, 250, 200, 6);
}

void myFractal(float x, float y, float radius, int depth) {
beginShape();
  for (int i = 0; i < 6; i++) {
    float angle = i * PI / 3; 
    float newX = x + cos(angle) * radius;
    float newY = y + sin(angle) * radius;
    vertex(newX, newY);
  }
    endShape(CLOSE);
  if (depth > 1) {
    for (int i = 0; i < 6; i++) {
      float angle = i * PI / 3; 
      float newX = x + cos(angle) * radius / 2;
      float newY = y + sin(angle) * radius / 2;
      int r = int(random(256));
      int g = int(random(256));
      int b = int(random(256));
      stroke(r, g, b);
      myFractal(newX, newY, radius / 2, depth - 1);
    }
  }
}
