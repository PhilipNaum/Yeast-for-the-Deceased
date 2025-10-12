anchored_obj = noone;

acceleration = .3;
deceleration = .1;
max_speed = 7

wallDeceleration = -1;

appliedX=0;
appliedY=0;
magnitude = 0;

velocityX = 0;
velocityY = 0;

max_accel = 2;
jerk = .03;

velMagnitude=0;

// Parry Logic

parryTimer = .5;

failWait = 2
parryFailTimer = failWait;

// Sizing

size = 90;
width = size;
height = size;

function Resize(sizeChange)
{
	image_xscale = width / sprite_width;
	image_yscale = height / sprite_height;
}

Resize(size);

