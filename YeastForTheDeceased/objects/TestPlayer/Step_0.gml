if(attached && anchored_obj != noone){
	
	
	goToX = anchored_obj.x;
	goToY = anchored_obj.y;
	
	//for main menu
	
	if(object_is_ancestor(anchored_obj.object_index,button_parent)){
		goToX = anchored_obj.x - anchored_obj.sprite_width/2;
	}
	
 
	//create vector to go to enemy
	appliedX = goToX - x;
	appliedY = goToY - y;
	
	//get applied force magnitude
	magnitude = sqrt(sqr(x)+sqr(y));
	
	//normalize vector
	appliedX /= magnitude;
	appliedY /= magnitude;
	
	//add jerk to acceleration, with cap
	acceleration = max(acceleration+jerk,max_accel);
	//multiply by acceleration
	appliedX *= acceleration;
	appliedY *= acceleration;
	
	//add to velocity
	velocityX += appliedX;
	velocityY += appliedY;
	
	//check if above max speed
	velMagnitude = sqrt(sqr(velocityX)+sqr(velocityY));
	if(velMagnitude > max_speed){
		
		//normalize velocity
		velocityX/=velMagnitude;
		
		velocityY/=velMagnitude;
		//multiply by max speed
		velocityX*=max_speed;
		velocityY*=max_speed;
	}
	
}
if(!attached && abs(velocityX) >= .1 && abs(velocityY) >= .1){
	if(velocityX<0){
		velocityX += deceleration;
	}
	if(velocityX>0){
		velocityX-= deceleration;
	}
	if(velocityY<0){
		velocityY += deceleration;
	}
	if(velocityY>0){
		velocityY -= deceleration
	}
}

//change position
x+=velocityX;
y+=velocityY;


//Parry logic

//if in parry state, decrease parry timer
if(parry)
{
	parryTimer -= (delta_time/1000000);
}

//if parry timer is up
if(parryTimer<=0){
	//set parry to false
	parry=false;
	//see if it was successful
	
	//if not, then turn on the fail timer
	if(!successful_parry)
	{
		parryFailTimer-=delta_time/1000000;
		//if fail timre is up, then reset
		if(parryFailTimer<=0)
		{
			successful_parry = true;
			parryFailTimer = failWait;
		}
	}
	else
	{
		parryTimer=.5;
		successful_parry = false;
	}
}

//flip the image based on veloc
if(velocityX < 0){
	image_xscale = -abs(image_xscale);
}
if(velocityX > 0){
	image_xscale = abs(image_xscale);
}