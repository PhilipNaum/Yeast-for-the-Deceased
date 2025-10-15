if (fading)
{
	image_alpha -= .01;
	
	if (image_alpha == 0)
	{
		fading = false;
	}
}
else
{
	image_alpha += .01;
	
	if (image_alpha == 1)
	{
		fading = true;
	}
}