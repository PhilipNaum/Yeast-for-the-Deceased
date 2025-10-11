randomise();


baseXSpeed = 10;

velocityX = baseXSpeed;
velocityY = 0;

gravityVal = .2;
deltaOffset = 1000000;

width = 150;
height = 150;

reverseTimer = irandom_range(1, 5)

// Attack Behavior

jumpTimer = irandom_range(1, 5);
jumping = false;

rollWait = 0.5;
rollTimer = rollWait;

// Bread Rising

riseTimer = irandom_range(5, 10);

// Setting Initial Platform

curPlatform = irandom_range(1, 3);
locationSet = false;

tarPlatform = 0;

// Setting Size

image_xscale = width / sprite_width;
image_yscale = height / sprite_height;

