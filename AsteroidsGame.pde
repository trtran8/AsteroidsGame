//your variable declarations here
Spaceship ree;
public void setup() 
{
  size(500,500);
  ree = new Spaceship();
}
public void draw() 
{
  ree.show();
  ree.move();
}
public void keyPressed(){
	if(key == 'w'){
		ree.accelerate(0.2);
	}
	if(key == 'a'){
		ree.turn(-12);
	}
	if(key == 'd'){
		ree.turn(12);
	}
}
