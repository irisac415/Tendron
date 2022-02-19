class Tendril
{
  public final static int SEG_LENGTH = 3; //length of each segment in the tendril
  private int myNumSegments, myX, myY, startX, startY, endX, endY;
  private double myAngle;
 
  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians
   x, y  is the starting (x,y) coordinate
   */
   
  public Tendril(int len, double theta, int x, int y)
  {
    myX = x;
    myY = y;
    myAngle = theta;
    myNumSegments = len;
  }
  public void show()
  {
   
   startX = myX;
   startY = myY;
   for(int i = 0; i <= myNumSegments; i ++){
     strokeWeight(1.5);
     stroke((myNumSegments/5*14),((int)(myNumSegments/3.5*12)),((int)(myNumSegments/3.5*10)));
     myAngle += (Math.random()*0.4-0.2);
     endX = startX + (int)(Math.cos(myAngle)*SEG_LENGTH);
     endY = startY + (int)(Math.sin(myAngle)*SEG_LENGTH);
     //System.out.println("startX " + startX + " startY " + startY + " endX " + endX + " endY " + endY + " change " + (int)(Math.cos(myAngle)*SEG_LENGTH));
     line(startX,startY,endX,endY);
     startX = endX;
     startY = endY;
   }
   if(myNumSegments >= SEG_LENGTH){
     Cluster c = new Cluster(myNumSegments-32,endX,endY);
     //stroke(myNumSegments+90,myNumSegments+120,myNumSegments+140);
   }
  }
}
