class FallingCar {
    int x; 
    int y; 
    int width; 
    int height; 
    int speed; 

    FallingCar(int x, int speed) {
        this.x = x;
        this.y = 0; 
        this.speed = speed;
        this.width = 40; 
        this.height = 60; 
    }

    void display() {
        
        fill(0); //Dæk
        ellipse(x - width / 2, y + height / 4, 10, 20); // sæt 1
        ellipse(x + width / 2, y + height / 4, 10, 20); // sæt 1
         ellipse(x - width / 2, y - 20, 10, 20); // sæt 2
        ellipse(x + width / 2, y -20, 10, 20);// sæt 2
        
        // Forlygter
        fill(255, 255, 0); 
        ellipse(x - width / 4, y+30, 10, 10); 
        ellipse(x + width / 4, y+30, 10, 10); 
        // Bil
        fill(255, 0, 0);
        rectMode(CENTER);
        rect(x, y, width, height);
                
        fill(#4B4848); //Rude
        rect(x, y - height / 2 + 30, width-10, height / 4);
    }

    void move() {
        y += speed; 
    }
}
