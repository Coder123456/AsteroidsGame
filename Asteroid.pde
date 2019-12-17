class Asteroid extends Floater {

  protected float rotSpeed;
  //protected color myColor;
  //protected float myCenterX, myCenterY;
  public Asteroid() {
    myDirectionX = (float)(Math.random() * 11) - 5 ;    
    myDirectionY = (float)(Math.random() * 11) - 5 ; 

    rotSpeed = (float)(Math.random() * 1000) + 28000;
    myCenterX =  (float)(Math.random() * 500)+50;
    myCenterY =  (float)(Math.random() * 500)+50;
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    myColor = (4);
    xCorners[0] = -15;
    xCorners[1] = 0;
    xCorners[2] = 40;
    xCorners[3] = 40;
    xCorners[4] = 0;
    xCorners[5] = -15;
    yCorners[0] = 15;
    yCorners[1] = 0;
    yCorners[2] = -15;
    yCorners[3] = -15;
    yCorners[4] = 0;
    yCorners[5] = 15;
  }
  public float getX()
  {
    return myCenterX;
  }
  public float getY()
  {
    return myCenterY;
  }
  public void showe ()  //Draws the floater at the current position  
  {             
    fill(235, 100, 50);   
    stroke(255, 127, 80);    

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
  public void move ()
  {
    turn((int)rotSpeed);
    super.move();
    xCorners[0]*=1.01;
    xCorners[1]*=1.01;
    xCorners[2]*=1.01;
    xCorners[3] *=1.01;
    xCorners[4]*=1.01;
    xCorners[5] *=1.01;
    yCorners[0] *=1.01;
    yCorners[1] *=1.01;
    yCorners[2] *=1.01;
    yCorners[3]*=1.01;
    yCorners[4] *=1.01;
    yCorners[5] *=1.01;
    
  }
}
