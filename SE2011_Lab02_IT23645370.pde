void setup() {
  size(550, 550);
}

void draw() {
  background(240);
  for (int y = 25; y < height; y += 50) {
    for (int x = 25; x < width; x += 50) {
      if ((x + y) % 100 == 0) {
        fill(255, 0, 0); 
      } else {
        fill(0, 0, 255);
      }
      
      ellipse(x,y,50,50);
    }
  }
}
