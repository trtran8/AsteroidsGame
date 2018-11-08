class Star //note that this class does NOT extend Floater
{
	int myX,myY;
	Star(){
		myX = (int)((500)*Math.random());
		myY = (int)((500)*Math.random());
	}
	public void show(){

		ellipse(myX,myY,1,1);
	}
}
