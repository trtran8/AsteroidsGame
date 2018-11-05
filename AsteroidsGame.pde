//your variable declarations here
Spaceship ree;
public void setup() 
{
  size(500,500);
  ree = new Spaceship();
}
public void draw() 
{
	  background(0);
  ree.show();
  ree.move();
}
public void keyPressed(){
	if(key == 'w'){
		ree.accelerate(0.1);
	}
	if(key == 'a'){
		ree.turn(-12);
	}
	if(key == 'd'){
		ree.turn(12);
	}
	if(key == 's'){
		ree.accelerate(-0.1);
	}
	if(key == 'e'){
		ree.setX((int)(Math.random()*width));
		ree.setY((int)(Math.random()*height));
	}
}
