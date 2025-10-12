if(TestPlayer.parry){
	if(TestPlayer.anchored_obj == self){
		TestPlayer.anchored_obj = noone
	}
	instance_destroy();
	EnemyManager.enemyCount--;
	
}