public void setup()
{
  size(500, 500);  
  background(30,30,150);
  noLoop();
}

public void draw()
{
  stroke(0);
  background(120,170,200);
  Cluster c = new Cluster(65, 250, 250); // initial number of segments in the tendril and starting (x,y) coordinate
}
public void mousePressed()
{
  redraw();
}
