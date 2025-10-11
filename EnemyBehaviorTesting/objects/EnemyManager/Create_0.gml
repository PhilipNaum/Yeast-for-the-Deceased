randomise();

bigBunNum = 0;

for (var i = 0; i < 3; i++)
{
	var smallEnemy = instance_create_layer(irandom_range(0, room_width - 150), 0, "Instances", SmallBun);
}