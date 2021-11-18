class Spaceship extends Floater  
{   

    public Spaceship() {
      corners= 4;
      xCorners= new int[] {-8,16,-8,-2};
      yCorners= new int[] {-8,0, 8, 0};
      myColor= color(0);
      myCenterX=(double)(Math.random()*480);
      myCenterY=(double)(Math.random()*480);
      myXspeed=0;
      myYspeed=0;
      myPointDirection=0;   
    }
    public void hyperspace() {
      myCenterX=(double)(Math.random()*480);
      myCenterY=(double)(Math.random()*480);
      myXspeed=0;
      myYspeed=0;
      myPointDirection=(double)(Math.random()*360);   
    }
}
