//your variable declarations here
Spaceship ree;
Star [] big;
public void setup() 
{
  size(500,500);
  ree = new Spaceship();
  big = new Star[250];
  for(int i = 0; i<big.length; i++){
	  	big[i] = new Star();
	 }
}
public void draw() 
{
  background(32, 39, 51);
  for(int i = 0; i<big.length; i++){
		big[i].show();
	 }
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
	if(key == 's'){
		ree.accelerate(-0.2);
	}
	if(key == 'e'){
		ree.setX((int)(Math.random()*width));
		ree.setY((int)(Math.random()*height));
	}
}
