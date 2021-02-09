//Name

class Particle
{
  //Member Data
  float x;
  float y; 
  float xSpeed;
  float ySpeed;
  boolean isAlive = true;
  color c;


  //Constructor

  Particle()
  {
    x = random(0, width);
    y = random(0, height);
    xSpeed = random(-2, 2);
    ySpeed = random(1, 4);
    isAlive = true;
    
    c = color(random(255), random(255), random(255));
  }
  

  Particle(float _x, float _y)
  {
    x = _x;
    y = _y;
    xSpeed = random(-2, 2);
    ySpeed = random(1, 4);
    isAlive = true;
    c = color(random(255), random(255), random(255));
  }






void setXSpeed(float _x)
{
  x= _x;
}

  ///Functions
  void Render()
  {
    fill(c);
    rect(x, y, 5, 5);
    x += xSpeed;
    y += ySpeed;

    if (y > height)
    {
      isAlive = false;
    }
  }
}