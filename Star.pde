



class star    
{     
  private color colore;
  private double mx, my, speede, angl;
  star() //constructor
  {

    mx = bob.getCenterX();

    my = bob.getCenterY();

    angl = Math.random()*2*Math.PI;

    speede = (Math.random());


    colore = color(10, 200, 200);
  }

  public void move()
  {
    if ((600>mx)&&(mx>0))

    {
      colore = color(230, 20, 100);
      mx = speede * (Math.sin(angl)*((int)(Math.random()*2)+2)) + mx;
      my = speede * (Math.cos(angl)*((int)(Math.random()*10)+2)) + my;
    } else
    {
      colore = color(230, 20, 100);
      mx = bob.getCenterX()+ 5; 
      my =  bob.getCenterY();
      angl = Math.random()*1.9*Math.PI;
      mx = speede * (Math.cos(angl)*((int)(Math.random()*2)+5)) + mx;
      my = speede * (Math.sin(angl)*((int)(Math.random()*2)+5)) + my;
    }
  }

  public void shower()
  {
    fill(((int)(Math.random() * 25)+100)+((int)(Math.random() * 25)+100)+((int)(Math.random() * 25)+100));
    stroke(((int)(Math.random() * 25)+200)+((int)(Math.random() * 25)+200)+((int)(Math.random() * 25)+200)); 
    ellipse((float)mx, (float)my, 2, 2);
    ellipse((float)mx, (float)my, 2, 2);
    ellipse((float)mx, (float)my, 2, 2);
  }
}
