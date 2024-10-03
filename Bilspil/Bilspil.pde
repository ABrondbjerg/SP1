int carX;
int carY;
int points = 0;

int carHeight = 60;
int carWidth = 40;

PlayerCar blueCar;

ArrayList<FallingCar> redCars = new ArrayList<>();

void setup(){
 size(400,600);
blueCar = new PlayerCar(width/2,height- 100,50,80);

for (int i = 0; i < 5; i++) {
        redCars.add(new FallingCar((int) random(width), (int) random(2, 5))); // Random x-position og hastighed
    }
}

void draw() {
background(200);
blueCar.move(0,0);

blueCar.display();

for (int i = redCars.size() - 1; i >= 0; i--) {
        FallingCar car = redCars.get(i);
        car.move(); // Flyt bilen
        car.display(); // Vis bilen
        points++;
        textSize(20);
        text("Points: " + points, 10, 20);
        
        if (blueCar.collidesWith(car)) {
            fill(255, 0, 0);
            textSize(32);
            text("Game Over!", width / 2 - 80, height / 2);
            text("Score: " + points, width / 2 - 80, (height/2 + 30));
            noLoop(); 
            return; 
        }
        // Tjek om bilen er nået bunden
        if (car.y > height) {
            redCars.remove(i);
        }
    }

    // Tilføj en ny bil
    if (frameCount % 60 == 0) { // hvert sekund
        redCars.add(new FallingCar((int) random(width), (int) random(2, 5)));
    }
}
// Kontroller
void keyPressed() {
  
  if (key == 'a' || key == 'A') {
    blueCar.move(-7, 0);  
  } else if (key == 'd' || key == 'D') {
    blueCar.move(7, 0);   
  } else if (key == 'w' || key == 'W') {
    blueCar.move(0, -7);  
  } else if (key == 's' || key == 'S') {
    blueCar.move(0, 7);   
  }
}
