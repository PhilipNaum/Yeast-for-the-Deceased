if(parry){
	successful_parry = true
	curVelocityMax = min(curVelocityMax+5, max_speed);
	acceleration = min(acceleration+3, max_accel);
}