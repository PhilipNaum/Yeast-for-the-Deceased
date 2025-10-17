if (global.earlyArt)
{
	if(anchored){
		draw_sprite_ext(spr_outline,image_index,x,y,50/sprite_width,50/sprite_height,0,c_red,100);
	
	}
	else if(position_meeting(mouse_x,mouse_y,self)){
		draw_sprite_ext(spr_outline,image_index,x,y,50/sprite_width,50/sprite_height,0,c_yellow,100);
	}

	
	if(rolling){
		draw_sprite_ext(spr_rolling_bun, image_index, x, y,image_xscale,image_yscale,0,c_white,100);
	}
	else if (jumping)
	{
		draw_sprite_ext(spr_bun_jump, image_index, x, y,image_xscale,image_yscale,0,c_white,100);
	}
	else
	{
		draw_sprite_ext(spr_bun_walking, image_index, x, y,image_xscale,image_yscale,0,c_white,100);
	}
}
else
{
	if(anchored){
		draw_sprite_ext(spr_outline,image_index,x,y,50/sprite_width,50/sprite_height,0,c_red,100);
	
	}
	else if(position_meeting(mouse_x,mouse_y,self)){
		draw_sprite_ext(spr_outline,image_index,x,y,50/sprite_width,50/sprite_height,0,c_yellow,100);
	}

	
	if(rolling){
		draw_sprite_ext(spr_rolling_bun, image_index, x, y,image_xscale,image_yscale,0,c_white,100);
	}
	else if (jumping)
	{
		draw_sprite_ext(spr_bun_jump, image_index, x, y,image_xscale,image_yscale,0,c_white,100);
	}
	else
	{
		draw_sprite_ext(spr_bun_walking, image_index, x, y,image_xscale,image_yscale,0,c_white,100);
	}
}