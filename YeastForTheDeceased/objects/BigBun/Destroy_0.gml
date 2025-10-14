for (var i = 0; i < 2; i++)
{
	var smallEnemy = instance_create_layer(x, y, "Instances_Front", SmallBun);
}

EnemyManager.bigBunNum--;
EnemyManager.enemyCount--;