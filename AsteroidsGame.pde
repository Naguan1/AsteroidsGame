Star [] bruh;
Spaceship[] fleet = new Spaceship[6];
ArrayList <Asteroid> rock = new ArrayList <Asteroid>();

public void setup() 
{
  size(500,500);
  bruh= new Star[209];
  for(int i=0; i<bruh.length; i++)
  bruh[i]= new Star();
  fleet[0] = new Spaceship(250, 250);
  for (int i = 1; i < fleet.length; i++){
    if (i % 2 == 0){
      fleet[i] = new Spaceship(200, 190 + i*20);
    }
    else{
      fleet[i] = new Spaceship(150, 180 + i*25);
    }
  }
  for (int i = 0; i < 10; i++){
    rock.add(i, new Asteroid());
  }
  
}
public void draw() 
{
  background(255);
  for(int i=0; i< bruh.length; i++){
    bruh[i].show();
  }
    for (int i = 0; i < fleet.length; i++){
      if(keyPressed) {
        if(key=='a'||key=='A'){
          fleet[i].turn(-10);
        }
        if(key=='d'|| key=='D'){
          fleet[i].turn(10);
        }
        if(key=='w'|| key=='W'){
          fleet[i].accelerate(0.4);
        }
        if(key=='s' || key=='S'){
          fleet[i].accelerate(-0.1);
        }
        if(key== 'h')
        {
          fleet[i].hyperspace();
        }
      }
      fleet[i].show();
      fleet[i].move();
      for (int nI = 0; nI < rock.size(); nI++){
        rock.get(nI).show();
        rock.get(nI).move();
        if(dist(rock.get(nI).getCenterX(), rock.get(nI).getCenterY(), 
        fleet[i].getCenterX(), fleet[i].getCenterY()) < 20){
          rock.remove(nI);
        }
       }
    }
  

}
