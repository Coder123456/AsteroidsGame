class Bullet extends Floater {
  
  public Bullet(Spaceship theShip)
  {
    myCenterX = theShip.getCenterX();
    myCenterY = theShip.getCenterY();
    myDirectionX = (theShip.getDirY())/3;
    myDirectionY = (theShip.getDirY())/3;
    myPointDirection = theShip.getPoint();
    accelerate(6);
  }
  public float getCenterX()
  {
    return myCenterX;
  }
  public float getCenterY()
  {
    return myCenterY;
  }
  public float getDirX()
  {
    return myDirectionX;
  }
  public float getDirY()
  {
    return myDirectionY;
  }
  public float getPoint()
  {
    return myPointDirection;
  }
  public void show ()
  {
    ellipse(myCenterX, myCenterY, 10, 10);
  }
  public void move ()
  {
      
     myCenterX += myDirectionX;    
    myCenterY += myDirectionY;
  }
}
