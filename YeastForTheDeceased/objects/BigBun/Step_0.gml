if (attackTimer > 0)
{
	attackTimer -= (delta_time/deltaOffset)
}
else
{
	var attack = instance_create_layer(x,y, "Instances", RadiusAttack);
	attackTimer = attackWait;
}

if(TestPlayer.anchored_obj != self){
	anchored=false;
}