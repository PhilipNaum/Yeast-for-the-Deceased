if(attached){
	//move_towards_point(goToX,goToY,move_speed);
	if(point_distance(x,y,goToX,goToY)>5){
		var dir = point_direction(x,y,goToX,goToY);
		move_speed = min(move_speed+acceleration,max_speed);
		x += lengthdir_x(move_speed,dir);
		y += lengthdir_y(move_speed, dir)
	}
	
	else{
		//start slowing down
		move_speed = max(0,move_speed-deceleration);
		// if really slow, snap to point
		if(move_speed<=.1){
			move_speed=0;
			x=goToX;
			y=goToY;
		}
		else{
			var dir = point_direction(x,y,goToX,goToY);
			x += lengthdir_x(move_speed,dir);
			y += lengthdir_y(move_speed,dir);
		}
	}
	
}

