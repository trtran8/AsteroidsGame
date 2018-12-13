//your variable declarations here
Spaceship ree;
Star [] big;
ArrayList<Asteroids> epic = new ArrayList<Asteroids>();
ArrayList<Bullet> pew = new ArrayList<Bullet>();
public void setup() 
{
  size(500,500);
  ree = new Spaceship();
  big = new Star[250];

  for(int i = 0; i<big.length; i++){
	  	big[i] = new Star();
	 }
  for(int a = 0; a< 8; a++){
	  	epic.add(new Asteroids());
	 }
}
public void draw() 
{
  background(32, 39, 51);
  for(int i = 0; i<big.length; i++){
		big[i].show();
	 }

  for(int a = 0; a<epic.size(); a++){
	 	epic.get(a).move();
		epic.get(a).show();
		float dis = dist(ree.getX(),ree.getY(),epic.get(a).getX(),epic.get(a).getY());
		if (dis<12){
			epic.remove(a);
		}
	}
	  for (int s = 0; s<pew.size(); s++){
  	pew.get(s).move();
  	pew.get(s).show();
  	for (int z = 0; z<epic.size(); z++){
  		float dis2 = dist(pew.get(s).getX(),pew.get(s).getY(),epic.get(z).getX(),epic.get(z).getY());
  		if(dis2<12){
  			epic.remove(z);
  			pew.remove(s);
  			break;
  		}
	}
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
	if(key == 'q'){
		ree.setDirectionX(0);
		ree.setDirectionY(0);
	}
	if(key == ' '){
		pew.add(new Bullet(ree));
	}
}
