if (Rolling && VelocityY < 0)
{
	Rolling = false;
	VelocityY = 0;
	alarm_set(1, random_range(room_speed*2, room_speed*5))
	onTop = false;
}