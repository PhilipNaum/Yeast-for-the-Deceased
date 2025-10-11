if (rolling && tarPlatform == 2 && velocityY > 0)
{
	jumping = false;
	jumpTimer = irandom_range(1, 5);
	
	rolling = false;
	rollTimer = rollWait;
	
	velocityY = 0;
	
	curPlatform = 2;
	
	sprite_index = bunGuy;
	image_xscale = width / sprite_get_width(bunGuy);
	image_yscale = height / sprite_get_height(bunGuy);
	
	if (velocityX < 0)
	{
		velocityX = -baseXSpeed;
	}
	else
	{
		velocityX = baseXSpeed;
	}
}