anchored_obj = noone;

wallDeceleration = -1;

appliedX=0;
appliedY=0;
magnitude = 0;

velocityX = 0;
velocityY = 0;
curVelocityMax = 10;
max_speed = 30;

baseAcceleration = 3;
acceleration = 6;
deceleration = .1;

max_accel = 15;
//jerk = .15;

velMagnitude=0;

deltaOffset = 1000000;

// Parry Logic

parryTimer = .75;

failWait = 1
parryFailTimer = failWait;

// Sizing

size = 60;
width = size;
height = size;

function Resize(sizeChange, spr)
{
	image_xscale = sizeChange / sprite_get_width(spr);
	image_yscale = sizeChange / sprite_get_height(spr);
}

function ResizeWH(setWidth, setHeight, spr)
{
	image_xscale = setWidth / sprite_get_width(spr);
	image_yscale = setHeight / sprite_get_height(spr);
}

Resize(size, spr_gr);

