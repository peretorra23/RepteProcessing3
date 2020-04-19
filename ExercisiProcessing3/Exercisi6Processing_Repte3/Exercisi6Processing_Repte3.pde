Character character;
Mosca mosca;
Ocell ocell;

void setup() {
  size(500,500);
  ocell = new Ocell();
  character = new Character(); 
  mosca = new Mosca();
}

void draw() {
  background(0);
  
  ocell.update();
  ocell.display();
  mosca.update();
  mosca.display();
  character.update();
  character.display(); 
}

class Character {

  PVector location;
  PVector velocity;
  PVector acceleration;
  float topspeed;

  Character() {
    // Start in the center
    location = new PVector(width/2,height/2);
    velocity = new PVector(0,0);
    topspeed = 5;
  }

  void update() {
    
    acceleration = PVector.random2D();
    acceleration.mult(random(30));
    velocity = PVector.random2D();
    
    acceleration.setMag(0.7);
    velocity.add(acceleration);
    velocity.limit(topspeed);
    location.add(velocity);
  }

  void display() {
    stroke(255);
    strokeWeight(2);
      fill (255, 0, 0);
    ellipse(location.x,location.y,48,48);
     float r = random(100);
      ellipse(location.x,location.y,12,12);
     float c = random(100);
     ellipse(location.x,location.y,6,6);
     float l = random(100);

  }

}
class Mosca {

  PVector location;
  PVector velocity;
  PVector acceleration;
  float topspeed;


  Mosca() {
    // Start in the center
    location = new PVector(width/50,height/10);
    velocity = new PVector(0,0);
    topspeed = 5;
  }

  void update() {
   acceleration = PVector.random2D();
    acceleration.mult(random(60));
    velocity = PVector.random2D();
    
    acceleration.setMag(1.0);
    velocity.add(acceleration);
    velocity.limit(topspeed);
    location.add(velocity);
  }

  void display() {
    stroke(255);
    strokeWeight(2);
    fill (0, 255,0);
    ellipse(location.x,location.y,48,48);
     float r = random(50);
     ellipse(location.x,location.y,32,32);
     float o = random(50);
       ellipse(location.x,location.y,15,15);
     float b = random(50);
    

  }
}
class Ocell {

  PVector location;
  PVector velocity;
  PVector acceleration;
  float topspeed;


  Ocell() {
    location = new PVector(width/7,height/7);
    velocity = new PVector(0,0);
    topspeed = 5;
  }

  void update() {
   acceleration = PVector.random2D();
    acceleration.mult(random(60));
    velocity = PVector.random2D();
    
    acceleration.setMag(1.0);
    velocity.add(acceleration);
    velocity.limit(topspeed);
    location.add(velocity);
  }

  void display() {
    stroke(255);
    strokeWeight(2);
    fill (0, 0,255);
    rect(location.x,location.y,60,90);
     float r = random(50);
      rect(location.x,location.y,30,30);
     float m = random(50);
      rect(location.x,location.y,7,7);
     float p = random(50);
  }
}
