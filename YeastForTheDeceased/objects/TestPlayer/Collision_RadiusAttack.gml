if(parry){
	successful_parry = true
}
if(!parry){

//Stop player
velocityX = 0;
velocityY = 0;
acceleration = baseAcceleration;
attached = false
anchored_obj = noone;

//Get vector inbetween attack and player
pushBackX = goToX - x;
pushBackY = goToY - y;

//normalize vector
pushBackNorm = sqrt(sqr(pushBackX)+sqr(pushBackY));
pushBackX /= pushBackNorm;
pushBackY /= pushBackNorm;

//mulitply by intensity
pushBackX *= 7;
pushBackY *= 7;

//add to player velocity
velocityX -= pushBackX;
velocityY -= pushBackY;

}