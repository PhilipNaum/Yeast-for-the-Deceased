x += VelocityX

if (x > window_get_width() || x < 0)
{
	VelocityX = -VelocityX
}

if (Rolling)
{
	y -= VelocityY
	
	VelocityY -= Gravity
}