if (rolling && tarPlatform == 3 && velocityY > 0)
{
	jumping = false;
	jumpTimer = irandom_range(1, 5);
	
	rolling = false;
	rollTimer = rollWait;
	
	velocityY = 0;
	
	curPlatform = 3;
	
	sprite_index = bunGuy;
	image_xscale = width / sprite_get_width(bunGuy);
	image_yscale = height / sprite_get_height(bunGuy);
}