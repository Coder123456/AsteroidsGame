class Spaceship //extends Floater  
{   
    class Spaceship extends Floater  
{   
  
  public Spaceship() {
    corners = 4;
    int[] xS = {-8, 16, -8, -2};
    int[] yS = {-8, 0, -8, 0};
    xCorners = xS;
    yCorners = yS;
  }
  public void move ()
  {  

    myCenterX += myDirectionX;
    myCenterY += myDirectionY;
    if (myCenterX >width)
    {
      myCenterX = 0;
    } else if (myCenterX<0) 
    {
      myCenterX = width;
    }
    if (myCenterY >height) {
      myCenterY = 0;
    } else if (myCenterY < 0) {
      myCenterY = height;
    }
  }
  
}
}
