anchored_obj = noone;

baseAcceleration = 3;
acceleration = baseAcceleration;
deceleration = .1;
max_speed = 26;

wallDeceleration = -1;

appliedX=0;
appliedY=0;
magnitude = 0;

velocityX = 0;
velocityY = 0;

max_accel = 15;
jerk = .2;

velMagnitude=0;

deltaOffset = 1000000;

// Parry Logic
parryWait = .7
parryTimer = parryWait;

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

if (global.earlyArt)
{
	Resize(size, spr_gr);
}
else
{
	ResizeWH(size,size+10, spr_grFinal);
}