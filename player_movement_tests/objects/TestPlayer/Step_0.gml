if(attached && anchored_obj != noone){
	////move_towards_point(goToX,goToY,move_speed);
	//if(point_distance(x,y,goToX,goToY)>5){
	//	var dir = point_direction(x,y,goToX,goToY);
	//	move_speed = min(move_speed+acceleration,max_speed);
	//	x += lengthdir_x(move_speed,dir);
	//	y += lengthdir_y(move_speed, dir)
	//}
	
	//else{
	//	//start slowing down
	//	move_speed = max(0,move_speed-deceleration);
	//	// if really slow, snap to point
	//	if(move_speed<=.1){
	//		move_speed=0;x
	//		x=goToX;
	//		y=goToY;
	//	}
	//	else{
		
	//		var dir = point_direction(x,y,goToX,goToY);
	//		x += lengthdir_x(move_speed,dir);
	//		y += lengthdir_y(move_speed,dir);
	//	}
	//}
	
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
	show_debug_message("parrying")
	parryTimer -= (delta_time/1000000);
	sprite_index = spr_grparry;
}
if(parryTimer<=0){
	parry=false;
	if(!successful_parry)
	{
		parryFailTimer-=delta_time/1000000;
		if(parryFailTimer<=0){
			successful_parry = true;
		}
	}
	else{
	parryTimer=.5;
	}
	sprite_index = grim_reaper;
}