randomise();

// Motion
baseXSpeed = 15;

velocityX = baseXSpeed;
velocityY = 0;

gravityVal = .4;

jumpPower = -8;

reverseTimer = irandom_range(1, 5)

deltaOffset = 1000000;

// Attack Behavior

jumpTimer = irandom_range(1, 5);
jumping = false;

rollWait = 0.5;
rollTimer = rollWait;

// Bread Rising

riseTimer = irandom_range(5, 10);

// Setting Size

size = 100;
width = size;
height = size;

image_xscale = width / sprite_width;
image_yscale = height / sprite_height;

// Setting Initial Platform

curPlatform = irandom_range(1, 3);

tarPlatform = 0;

// Spawning

spawning = true;

spawnX = irandom_range(50, room_width - size - 50);
spawnY = 0;

switch (curPlatform)
{
	case 1:
		spawnY = BottomPlatform.y - self.sprite_height/4;
		break;
	case 2:
		spawnY = MiddlePlatform.y - self.sprite_height/4;
		break;
	case 3:
		spawnY = TopPlatform.y - self.sprite_height/4;
		break;
}

spawnTime = 1.5;
spawnTimer = 0;
spawnDistance = spawnX - x;

spawnSpeedX = spawnDistance / spawnTime;

spawnGravity = 50;

spawnSpeedY = ((spawnY - y) - 0.5 * spawnGravity * sqr(spawnTime)) / spawnTime;

EnemyManager.enemyCount++;
