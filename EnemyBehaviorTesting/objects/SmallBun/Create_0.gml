randomise();

velocityX = 10;
velocityY = 0;

gravityVal = .2;
deltaOffset = 1000000;

reverseTimer = irandom_range(1, 5)

jumpTimer = irandom_range(1, 5);
jumping = false;

rollWait = 0.5;
rollTimer = rollWait;

// Setting Initial Platform

curPlatform = irandom_range(1, 3);


switch (curPlatform)
{
	case 1:
		y = BottomPlatform.y - self.sprite_height;
		break;
	case 2:
		y = MiddlePlatform.y - self.sprite_height;
		break;
	case 3:
		y = TopPlatform.y - self.sprite_height;
		break;
}

tarPlatform = 0;