randomise();

if (spawning)
{
	if (spawnTimer < spawnTime)
	{
		y += spawnSpeedY * delta_time/deltaOffset;
		spawnSpeedY += spawnGravity * delta_time/deltaOffset;
		
		x += spawnSpeedX * delta_time/deltaOffset;
		
		spawnTimer += delta_time/deltaOffset;
	}
	else
	{
		spawning = false;
	}
}

else
{
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
			
			if (global.earlyArt)
			{
				sprite_index = spr_rolling_bun;
				image_xscale = width / sprite_get_width(spr_rolling_bun);
				image_yscale = height / sprite_get_height(spr_rolling_bun);
			}
			else
			{
				sprite_index = spr_rolling_bun;
				image_xscale = width / sprite_get_width(spr_rolling_bun);
				image_yscale = height / sprite_get_height(spr_rolling_bun);
			}
		
			tarPlatform = irandom_range(1, 3);
		
			jumpBehavior = tarPlatform - curPlatform;
		
			if (jumpBehavior < 0)
			{
				velocityY = jumpPower;
			}
			if (jumpBehavior == 0)
			{
				velocityY = jumpPower*3;
			}
			if (jumpBehavior == 1)
			{
				velocityY = jumpPower*5;
			}
			if (jumpBehavior == 2)
			{
				velocityY = jumpPower*7;
			}
		}
	}
	else 
	{
		velocityY += gravityVal;
	}
	
	if(TestPlayer.anchored_obj != self){
		anchored = false;
	}
}

