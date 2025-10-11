if(parry){
	successful_parry = true
}
else if (other.rolling)
{
	//Stop player
	velocityX = 0;
	velocityY = 0;
	acceleration = 0;
	attached = false
	anchored_obj = noone;

	//Get vector inbetween attack and player
	pushBackX = other.x - x;
	pushBackY = other.y - y;

	//normalize vector
	pushBackNorm = sqrt(sqr(pushBackX)+sqr(pushBackY));
	pushBackX /= pushBackNorm;
	pushBackY /= pushBackNorm;

	//mulitply by intensity
	pushBackX *= 2;
	pushBackY *= 2;

	//add to player velocity
	velocityX -= pushBackX;
	velocityY -= pushBackY;
}
