if (rolling && tarPlatform == 1 && velocityY > 0)
{
	jumping = false;
	jumpTimer = irandom_range(1, 5);
	
	rolling = false;
	rollTimer = rollWait;
	
	velocityY = 0;
	
	curPlatform = 1;
	
	sprite_index = spr_bun_walking;
	image_xscale = width / sprite_get_width(spr_bun_walking);
	image_yscale = height / sprite_get_height(spr_bun_walking);
	
	if (velocityX < 0)
	{
		velocityX = -baseXSpeed;
	}
	else
	{
		velocityX = baseXSpeed;
	}
}