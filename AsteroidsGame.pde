//your variable declarations here
Spaceship bob = new Spaceship();

public void keyPressed()
{
  if(key == 'h')
  {
     bob.myDirectionX = 0;
     bob.myDirectionY = 0;

  }
}

public void setup() 
{
  size(600, 600);
}
public void draw() 
{
  background(0);
  Spaceship.show();
  Spaceship.move();
  
  
}
