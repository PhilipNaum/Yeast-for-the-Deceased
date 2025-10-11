if(attached && anchored_obj != noone){
	
	goToX = anchored_obj.x;
	goToY = anchored_obj.y;
	
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

x+=velocityX;
y+=velocityY;

if(parry){
	parryTimer -= (delta_time/1000000);
}
if(parryTimer<=0){
	parry=false;
	if(!successful_parry)
	{
		parryFailTimer-=delta_time/1000000;
		if(parryFailTimer<=0){
			successful_parry = true;
			parryFailTimer = 1;
		}
	}
	else{
	parryTimer=.5;
	}
}

if(velocityX < 0){
	image_xscale = -1;
}
if(velocityX > 0){
	image_xscale = 1;
}