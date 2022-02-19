public class Cluster
{
    public final static int NUM_STEMS = 7; //number of tendrils per cluster
    private double angle;

    public Cluster(int len, int x, int y)
    {
        angle = Math.random()*2*Math.PI;
        Tendril z = new Tendril(len,angle,x,y);
        z.show();
        Tendril a = new Tendril(len,angle + (2*Math.PI/7),x,y);
        a.show();
        Tendril b = new Tendril(len, angle + (4*Math.PI/7),x,y);
        b.show();
        Tendril c = new Tendril(len,angle + (6*Math.PI/7),x,y);
        c.show();
        Tendril d = new Tendril(len,angle + (8*Math.PI/7),x,y);
        d.show();
        Tendril e = new Tendril(len,angle + (10*Math.PI/7),x,y);
        e.show();
        Tendril f = new Tendril(len,angle + (12*Math.PI/7),x,y);
        f.show();
    }
}
