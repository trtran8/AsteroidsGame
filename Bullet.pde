class Bullet extends Floater{
	protected double dRadians;
	public Bullet(Spaceship theShip){
		 myCenterX=ree.getX();
		 myCenterY=ree.getY(); //holds center coordinates  
		 myPointDirection=ree.getPointDirection(); 
		 dRadians =myPointDirection*(Math.PI/180);
  		 myDirectionX=5 * Math.cos(dRadians)+ree.getDirectionX();
  		 myDirectionY=5 * Math.sin(dRadians)+ree.getDirectionY(); //holds x and y coordinates of the vector for direction of travel    //the number of corners, a triangular floater has 3   
         myColor=255;
	}
	public void show(){
		fill(myColor);
		ellipse((float)myCenterX,(float)myCenterY,5,5);
	}
	    public void setX(int x){
    	myCenterX = x;
    }
	public int getX() {
		return (int)myCenterX;
	} 
	public void setY(int y){
		myCenterY = y;
	}
	public int getY(){
		return (int)myCenterY;
	}   
	public void setDirectionX(double x)  {
		myDirectionX = x;
	} 
	public double getDirectionX()  {
		return myDirectionX;
	} 
	public void setDirectionY(double y)   {
		myDirectionY = y;
	}
	public double getDirectionY()   {
		return myDirectionY;
	}
	public void setPointDirection(int degrees)   {
		myPointDirection = degrees;
	}
	public double getPointDirection() {
		return myPointDirection;
	}

}