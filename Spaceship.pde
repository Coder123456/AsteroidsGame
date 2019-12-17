
class Spaceship extends Floater  
{   
  protected int corners;  //the number of corners, a triangular floater has 3   
  protected int[] xCorners;   
  protected int[] yCorners;   
  protected int myColor;   
  protected float myCenterX, myCenterY; //holds center coordinates   
  protected float myDirectionX, myDirectionY; //holds x and y coordinates of the vector for direction of travel   
  protected float myPointDirection; //holds current direction the ship is pointing in degrees    
  public Spaceship() {
    corners = 4;
    xCorners = new int[]   {-12,24,-12,-6,-24, 48, -24, -6,};
    yCorners = new int[] {-12, 0, 12, 0,-24, 0, 24, 0};
    myColor = 200;
    myCenterX = 300; 
    myCenterY = 300;
    myDirectionX = 0;
    myDirectionY = 0;
    myPointDirection = 0;
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
  public void setmyCenterX(float x)
  {
    myCenterX = x;
  }
  public void setmyCenterY(float y)
  {
    myCenterY = y;
  }
  public void setDirectionX(float x)
  {
    myDirectionX = x;
  }
  public void setDirectionY(float y)
  {
    myDirectionY = y;
  }
   public void setPoint(float y)
  {
     myPointDirection = y;
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
  public void show ()  //Draws the floater at the current position  
  {             
    fill(myColor - 30);   
    stroke(myColor );    
    
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
    
    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);

    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  } 
  public void accelerate (double dAmount)   
  {          
    //convert the current direction the floater is pointing to radians    
    double dRadians =myPointDirection*(Math.PI/180);     
    //change coordinates of direction of travel    
    myDirectionX += ((dAmount) * Math.cos(dRadians));    
    myDirectionY += ((dAmount) * Math.sin(dRadians));       
  }   
  public void turn (int nDegreesOfRotation)   
  {     
    //rotates the floater by a given number of degrees    
    myPointDirection+=nDegreesOfRotation;   
  }   
   
}
