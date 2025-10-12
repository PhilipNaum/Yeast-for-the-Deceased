anchored_obj = noone;

baseAcceleration = 2;
acceleration = baseAcceleration;
deceleration = .1;
max_speed = 28;

wallDeceleration = -1;

appliedX=0;
appliedY=0;
magnitude = 0;

velocityX = 0;
velocityY = 0;

max_accel = 15;
jerk = .15;

velMagnitude=0;

deltaOffset = 1000000;

// Parry Logic

parryTimer = .5;

failWait = 2
parryFailTimer = failWait;

// Sizing

size = 60;
width = size;
height = size;

function Resize(sizeChange)
{
	image_xscale = width / sprite_width;
	image_yscale = height / sprite_height;
}

Resize(size);

