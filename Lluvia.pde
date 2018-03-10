//Creación de una clase para generar la lluvia
class Lluvia {
  float x = random(width);
  float y = random (-20, -20);
  float yspeed= random (2, 10);
  
  void fall(){
  y = y + yspeed;
  if (y > height) {
    y= random (-20, -20);
  }
  }
  void show (){
   noStroke (); 
    fill(100, 204,244);
    ellipse (x, y, 1, 10);
  }
   }