if(TestPlayer.parry){
	if (rolling)
	{
		if (velocityX > 0)
		{
			if (other.x < x)
			{
				velocityX += 2;
			}
			else
			{
				velocityX = -velocityX;
			}
		}
		else
		{
			if (other.x > x)
			{
				velocityX -= 2;
			}
			else
			{
				velocityX = -velocityX;
			}
		}
	}
	else 
	{
		if(TestPlayer.anchored_obj == self){
		TestPlayer.anchored_obj = noone
		}
		instance_destroy();
	}
}