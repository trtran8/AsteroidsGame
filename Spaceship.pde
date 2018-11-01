class Spaceship extends Floater  
{   
	Spaceship(){
		 myCenterX =0;
		 myCenterY=0; //holds center coordinates   
  		 myDirectionX=0;
  		 myDirectionY=0; //holds x and y coordinates of the vector for direction of travel   
  		 myPointDirection=0;
  		 corners=3;  //the number of corners, a triangular floater has 3      
         myColor=255;
	}
    public void setX(int x){
    	myCenterX = x;
    }
	public double getX() {
		return myCenterX;
	} 
	public void setY(int y);{
		myCenterY = y;
	}
	public double getY(){
		return myCenterY;
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
	public double getDirectionY();   {
		return myDirectionY;
	}
	public void setPointDirection(int degrees)   {
		myPointDirection = degrees;
	}
	public double getPointDirection() {
		return myPointDirection;
	}
}
