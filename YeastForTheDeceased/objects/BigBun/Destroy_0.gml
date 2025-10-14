for (var i = 0; i < 2; i++)
{
	var smallEnemy = instance_create_depth(x, y, depth-1, SmallBun);
}

EnemyManager.bigBunNum--;
EnemyManager.enemyCount--;