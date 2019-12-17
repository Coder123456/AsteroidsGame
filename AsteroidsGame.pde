
Spaceship bob = new Spaceship();
ArrayList<Bullet> nob = new ArrayList<Bullet>();
ArrayList<Asteroid> blob = new ArrayList<Asteroid>();
star[] nightSky = new star[999];
int hlth = 5000;
int xr = 20;
public int e = 0;


public void keyPressed()
{
  if (key == 's')

  {

    bob.setDirectionX(0.0);
    bob.setDirectionY(0.0);
  }
  if (key == 'a')
  {
    bob.turn(350);
  }
  if (key == 'd')
  {
    bob.turn(10);
  }
  if (key == 'w')
  {
    bob.accelerate(0.5);
  }
  if (key == 'h')
  {
    bob.setDirectionX(0.0);
    bob.setDirectionY(0.0);
    bob.setmyCenterX((int)(Math.random()*590)+5);
    bob.setmyCenterY((int)(Math.random()*590)+5);
    bob.setPoint((int)(Math.random()*590)+5);
  }
  if (key == 'b')
  {

    Bullet a = new Bullet(bob);
    nob.add(a);
    e++;
  }
}

public void setup() 
{
  size(600, 600);
  for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i] = new star();
    nightSky[i].move();
  }
  for (int i = 0; i < xr; i++)
  {

    Asteroid a = new Asteroid();
    blob.add(a);
  }
}
public void draw() 
{
  background(((int)(Math.random() * 7)+243)+((int)(Math.random() * 7)+243)+((int)(Math.random() * 7)+252));
  bob.show();
  bob.move();

  bob.accelerate(0.000001);

  for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i].shower();
    nightSky[i].move();
    nightSky[i].shower();
    nightSky[i].move();
    nightSky[i].move();
  }
  for (int i = 0; i < blob.size(); i++)
  {
    (blob.get(i)).move();
    (blob.get(i)).showe();
    if ((20 > (dist(bob.getCenterX(), bob.getCenterY(), (blob.get(i)).getX(), (blob.get(i)).getY()))) || (-20 > (dist(bob.getCenterX(), bob.getCenterY(), (blob.get(i)).getX(), (blob.get(i)).getY()))))
    {
      blob.remove(i);
    }
  }
  for ( int a = 0; a < nob.size(); a++)
  {
    (nob.get(a)).move();
    (nob.get(a)).move();
    (nob.get(a)).move();
    (nob.get(a)).move();
    (nob.get(a)).move();
    (nob.get(a)).move();
    (nob.get(a)).show();
  } 
  for ( int e = 0; e < nob.size(); e++)
  {
    for (int i = 0; i < blob.size(); i++)
    {
      if (15 > (dist((nob.get(e)).getCenterX(), (nob.get(e)).getCenterY(), (blob.get(i)).getX(), (blob.get(i)).getY()))) 
      {
        blob.remove(i);
        nob.remove(e);
        break;
      }
    }
  }
}
