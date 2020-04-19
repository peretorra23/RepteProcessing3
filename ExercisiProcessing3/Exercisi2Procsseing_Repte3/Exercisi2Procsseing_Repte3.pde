Mover mover;
 
  void setup() {
  size(640,360);
   mover = new Mover(); 
  }
  
  
  void draw() {
  background(0);
   mover.update();
  mover.display(); 
}
 
   class Mover {
     
  PVector location;
  PVector velocity;
  PVector acceleration;
  float topspeed;
  
 
  Mover() {
   location = new PVector(width/2,height/2);
    velocity = new PVector(0,0);
    acceleration = new PVector(-0.001,0.01);
    topspeed = 10;
  }
    void update() {
    velocity.add(acceleration);
    velocity.limit(topspeed);
    location.add(velocity);
  }
  
  void checkEdges() {}
  
   void display() {
   stroke(255);
    strokeWeight(2);
    fill(127);
    ellipse(location.x,location.y,48,48);
     float r = random(100);

   }
}
