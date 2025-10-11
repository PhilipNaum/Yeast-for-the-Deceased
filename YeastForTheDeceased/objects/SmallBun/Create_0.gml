randomise();

velocityX = 10;
velocityY = 0;

gravityVal = .2;
deltaOffset = 1000000;

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

image_xscale = 150 / sprite_width;
image_yscale = 150 / sprite_height;

