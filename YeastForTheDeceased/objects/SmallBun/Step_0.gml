randomise();

// Setting initial position
// Not in create because creating instance forces you to pick a position and after create
if (!locationSet)
{
	switch (curPlatform)
	{
		case 1:
			y = BottomPlatform.y - self.sprite_height/2;
			break;
		case 2:
			y = MiddlePlatform.y - self.sprite_height/2;
			break;
		case 3:
			y = TopPlatform.y - self.sprite_height/2;
			break;
	}
	
	locationSet = true
}

// Updating position

x += velocityX*(delta_time/deltaOffset*10);
y += velocityY*(delta_time/deltaOffset*10);

//Keeping in Bounds

if (x + sprite_width/2 > room_width && velocityX>0)
{
	velocityX = -velocityX;
}

if (x - sprite_width/2 < 0 && velocityX <0)
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
	
	reverseTimer -= (delta_time/deltaOffset);
	
	if (reverseTimer < 0)
	{
		velocityX = -velocityX;
		reverseTimer = irandom_range(1, 5);
	}
	
	// Rising
	
	if (EnemyManager.bigBunNum < 2)
	{
		riseTimer -= (delta_time/deltaOffset);
				
		if (riseTimer < 0)
		{
			var newBigBun = instance_create_layer(x, y, "Instances", BigBun);
			EnemyManager.bigBunNum += 1;
			instance_destroy();
		}
	}
	else 
	{
		riseTimer = irandom_range(5, 10);
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

