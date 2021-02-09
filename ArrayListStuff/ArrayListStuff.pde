//ArrayList<>
// Array[]     
                //0  1 2  3  4  5
                
int x = 1000;
int[] grades = new int[x];

Particle p;

Particle[] parts = new Particle[100];
ArrayList<Particle> particles = new ArrayList<Particle>();



void setup()
{
 
  x = 20;
  for(int i=0; i < 100; i++)
  {
    parts[i] = new Particle();  
  }
  
  
  
  for(int i=0; i< 1000; i++)
  {
    particles.add(new Particle());
  }
  
  
  
  size(800,800);
  
  
  p = new Particle();
}

void draw()
{
  
  background(0);
  
  for(int i=0; i<parts.length; i++)
  {
    parts[i].Render();
  }
  
  //parts[2];
  //particles.get(2)
  
  //for(int i=0; i <particles.size(); i++)
  //{
  //  Particle temp = particles.get(i);
  //  temp.Render();
  //}
  
  for(int i=particles.size()-1; i >=0; i--)
  {
    Particle temp = particles.get(i);
    
    
    temp.Render();
    
    temp.setXSpeed(100);
    
    
    if(temp.isAlive == false)
    {
      particles.remove(i);
    }
    
  }
  
  /*
  //for each
  for(Particle temp: particles)
  {
    temp.Render();a
  } 
  */
  
  textSize(25);
  text(particles.size(),20,20);
  
  
  
  p.Render();
  
  
  if(mousePressed)
  {
    particles.add( new Particle(mouseX, mouseY));
    
  }
  
  
  
}