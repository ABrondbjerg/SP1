class PlayerCar {
  int x, y;  // Position
  int carWidth, carHeight;
  
  PlayerCar(int x, int y, int carWidth, int carHeight) {
    this.x = x;
    this.y = y;
    this.carWidth = carWidth;
    this.carHeight = carHeight;
  }
  
  void display() {
    // BIL
    fill(0, 0, 255);  
    rectMode(CENTER);
    rect(x, y, carWidth, carHeight);
    
    fill(#4B4848); //Rude
    rect(x, y - carHeight / 2 + 30, carWidth-10, carHeight / 4);

    fill(0);  //Dæk
    ellipse(x - carWidth/2, y + carHeight/3, 10, 20);  
    ellipse(x + carWidth/2, y + carHeight/3, 10, 20);  
    ellipse(x - carWidth/2, y + carHeight-100, 10, 20);  
    ellipse(x + carWidth/2, y + carHeight-100, 10, 20); 
    
    fill(255, 255, 0);  // Forlygter
    ellipse(x - carWidth/4, y - carHeight/2, 10, 10);  
    ellipse(x + carWidth/4, y - carHeight/2, 10, 10);  
  }
  
  void move(int dx, int dy) {
    x += dx;
    y += dy;
  }
  // Collision
  boolean collidesWith(FallingCar other) {
    return (x < other.x + other.width &&
            x + carWidth > other.x &&
            y < other.y + other.height &&
            y + carHeight > other.y);
}
}
