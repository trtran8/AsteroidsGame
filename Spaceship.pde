class Spaceship extends Floater  
{   
	Spaceship(){

	}
    public void setX(int x);{
    	myCenterX = x;
    }
	public int getX(); {
		return myCenterX;
	} 
	public void setY(int y);{
		myCenterY = y;
	}
	public int getY();{
		return myCenterY;
	}   
	public void setDirectionX(double x);  {
		myDirectionX = x;
	} 
	public double getDirectionX();  {
		return myDirectionX;
	} 
	public void setDirectionY(double y);   {
		myDirectionY = y;
	}
	public double getDirectionY();   {
		return myDirectionY;
	}
	public void setPointDirection(int degrees);   {
		myPointDirection = degrees;
	}
	public double getPointDirection(); {
		return myPointDirection;
	}
}
