class Asteroids extends Floater
{
  Asteroids(){
  		 myCenterX=Math.random()*width;
		 myCenterY=Math.random()*height; //holds center coordinates   
  		 myDirectionX=Math.random()*6-3;
  		 myDirectionY=Math.random()*6-3; //holds x and y coordinates of the vector for direction of travel   
  		 myPointDirection=Math.random()*(5*PI);
  		 corners=7;  //the number of corners, a triangular floater has 3   
  		 xCorners= new int[corners];   
  		 yCorners= new int[corners];   
  		 xCorners[0]=-8;
  		 yCorners[0]=-8;
  		 xCorners[1]=16;
  		 yCorners[1]=0;
  		 xCorners[2]=-8;
  		 yCorners[2]=8;
         myColor=color(153, 96, 47);
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