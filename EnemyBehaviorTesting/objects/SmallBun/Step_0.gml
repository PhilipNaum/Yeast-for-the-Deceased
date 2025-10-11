randomise();

x += velocityX*(delta_time/deltaOffset*10);
y += velocityY*(delta_time/deltaOffset*10);

//Keeping in Bounds

if (x + sprite_width > room_width)
{
	velocityX = -velocityX;
}

if (x < 0)
{
	velocityX = -velocityX;
}

//Jumping and Rolling

if (!jumping)
{
	jumpTimer -= (delta_time/deltaOffset);
	
	if (jumpTimer < 0) 
	{
		jumping = true;
	}
	
	// Reversing Direction
	
	reverseTimer -= (delta_time/deltaOffset)
	
	if (reverseTimer < 0)
	{
		velocityX = -velocityX;
		reverseTimer = irandom_range(1, 5)
	}
}
else if (!rolling)
{
	rollTimer -= (delta_time/deltaOffset)
	
	if (rollTimer < 0) 
	{
		rolling = true;
		
		tarPlatform = irandom_range(1, 3);
		
		jumpBehavior = tarPlatform - curPlatform;
		
		if (jumpBehavior < 0)
		{
			velocityY = -5;
		}
		if (jumpBehavior == 0)
		{
			velocityY = -15;
		}
		if (jumpBehavior == 1)
		{
			velocityY = -20;
		}
		if (jumpBehavior == 2)
		{
			velocityY = -40;
		}
	}
}
else 
{
	velocityY += gravityVal;
}
