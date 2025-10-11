if (attackTimer > 0)
{
	attackTimer -= (delta_time/deltaOffset)
}
else
{
	var attack = instance_create_layer(x + sprite_width/2, y + sprite_height/2, "Instances", RadiusAttack);
	attackTimer = attackWait;
}

if(anchored){
	TestPlayer.goToX = x;
	TestPlayer.goToY = y;
}
