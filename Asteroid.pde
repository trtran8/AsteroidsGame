class Asteroids extends Floater
{
	int rotspeed;
  Asteroids(){
  		 rotspeed=(int)(Math.random()*14)-7;
  		 myCenterX=Math.random()*width;
		 myCenterY=Math.random()*height; //holds center coordinates   
  		 myDirectionX=Math.random()*4-2;
  		 myDirectionY=Math.random()*4-2; //holds x and y coordinates of the vector for direction of travel   
  		 myPointDirection=Math.random()*(5*PI);
  		 corners=7;  //the number of corners, a triangular floater has 3   
  		 xCorners= new int[corners];   
  		 yCorners= new int[corners];   
  		 xCorners[0]=-16;
  		 yCorners[0]=0;
  		 xCorners[1]=-12;
  		 yCorners[1]=14;
  		 xCorners[2]=-6;
  		 yCorners[2]=12;
  		 xCorners[3]=0;
  		 yCorners[3]=20;
  		 xCorners[4]=10;
  		 yCorners[4]=8;
  		 xCorners[5]=2;
  		 yCorners[5]=-8;
  		 xCorners[6]=-12;
  		 yCorners[6]=-8;
         myColor=color(239, 247, 178);
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
	public void move ()   
  {      
    //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     

    //wrap around screen    
    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }   
    myPointDirection+=rotspeed;
  }   
}