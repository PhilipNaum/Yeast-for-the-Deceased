if (global.earlyArt)
{
	global.earlyArt = false;
}
else
{
	global.earlyArt = true;
}

if (global.earlyArt)
{
	sprite_index = spr_gr;
	Resize(size, spr_gr);
}
else
{
	sprite_index = spr_grFinal;
	ResizeWH(size, size+20,spr_grFinal);
}