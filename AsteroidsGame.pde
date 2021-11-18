Star [] bruh;
Spaceship Joe;
public void setup() 
{
  size(500,500);
  bruh= new Star[169];
  for(int i=0; i<bruh.length; i++)
  bruh[i]= new Star();
  Joe= new Spaceship();
  
}
public void draw() 
{
  background(255);
  for(int i=0; i< bruh.length; i++){
  bruh[i].show();
}
if(keyPressed) {
if(key=='a'||key=='A'){
Joe.turn(-10);
}
if(key=='d'|| key=='D'){
  Joe.turn(10);
}
if(key=='w'|| key=='W'){
Joe.accelerate(0.4);
}
if(key=='s' || key=='S'){
  Joe.accelerate(-0.1);
}
if(key== 'h')
{
  Joe.hyperspace();
}
}
  Joe.show();
  Joe.move();

}

