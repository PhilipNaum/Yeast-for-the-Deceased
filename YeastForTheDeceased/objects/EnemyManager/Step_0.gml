levelTimer -= delta_time/1000000
if(levelTimer<=0){
	room_goto(rm_lose)
}
else if(enemyCount<=0 && bigBunNum <= 0){
	room_goto(rm_win)
}
