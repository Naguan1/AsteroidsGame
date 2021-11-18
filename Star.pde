class Star //note that this class does NOT extend Floater
{
  //your code here
  private int myColor;
  private int mySize;
  private int myX;
  private int myY;
 public Star() {
    
    myColor= color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    mySize=((int)(Math.random()*10));
   myX=(int)(Math.random()*500);
    myY=(int)(Math.random()*500);
    
  }
   public void show() {
    fill(myColor);
    ellipse(myX,myY, mySize, mySize);
}
}
