randomise();

x = room_width / 2;
y = room_height / 2;

levelTimer = 60;

bigBunNum = 0;

for (var i = 0; i < 5; i++)
{
	var smallEnemy = instance_create_layer(x, y, "Instances", SmallBun);
}

var smallEnemy = instance_create_layer(x, y - 100, "Instances", BigBun);