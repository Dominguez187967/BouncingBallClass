//Global Variables
Ball b1 ;
Ball b2 ;
Ball b3 ;
//setup Method
public void setup()
{
  size(800,800) ;
  background(120) ;
  b1 = new Ball() ;
  b2 = new Ball() ;
  b3 = new Ball() ;
}
//draw Method
public void draw()
{
  background(120) ;
  b1.update() ;
  b1.drawBall() ;
  b1.checkEdges() ;
  b2.update() ;
  b2.drawBall() ;
  b2.checkEdges() ;
  b3.update() ;
  b3.drawBall() ;
  b3.checkEdges() ;
  
}
public class Ball
{
  private int x ;
  private int y ;
  private int xD ;
  private int yD ;
  private int diameter ;
  //Assume ball size is (800,800)

public Ball()
{
  x = (int)(Math.random() * 800) ;
  y = (int)(Math.random() * 800) ;
  xD = 5 ;
  yD = 5 ;
  diameter = (int)(Math.random() * 50 + 10) ;
}

public void update()
{
  x += xD ;
  y += yD ;
}
public void drawBall()
{
  ellipse(x,y,diameter,diameter) ;
}
public void checkEdges()
{
  if(x > width || x < 0)
  {
    this.diameter = (int)(Math.random() * 100 + 10) ;
    xD = xD * -1 ;
    if(xD > 0)
      xD++ ;
    else
      xD-- ;
  }
  if(y > height || y < 0)
  {
    this.diameter = (int)(Math.random() * 100 + 10) ;
    yD = yD * -1 ;
    if(yD > 0)
      yD++ ;
    else
      yD-- ;
  }
}
}
