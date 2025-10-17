//draw_text(100,100, parryTimer)

if (global.earlyArt)
{
	if (parry)
	{
		if (velocityX != 0)
		{
			draw_sprite_ext(spr_gr_parry, image_index, x, y,(size+15)/sprite_get_width(spr_gr_parry)*(velocityX/abs(velocityX)),size/sprite_get_height(spr_gr_parry),0,c_white,100);
		}
		else
		{
			draw_sprite_ext(spr_gr_parry, image_index, x, y,(size+15)/sprite_get_width(spr_gr_parry),size/sprite_get_height(spr_gr_parry),0,c_white,100);
		}
		//draw_sprite_ext(spr_scythe_effect_2, image_index, x, y,(size+40)/sprite_get_width(spr_scythe_effect),(size+40)/sprite_get_height(spr_scythe_effect),0,c_white,100);
	}
}
else
{
	if (parry)
	{
		if (velocityX != 0)
		{
			draw_sprite_ext(spr_gr_parry, image_index, x, y,(size+15)/sprite_get_width(spr_gr_parry)*(velocityX/abs(velocityX)),size/sprite_get_height(spr_gr_parry),0,c_white,100);
		}
		else
		{
			draw_sprite_ext(spr_gr_parry, image_index, x, y,(size+15)/sprite_get_width(spr_gr_parry),size/sprite_get_height(spr_gr_parry),0,c_white,100);
		}
		//draw_sprite_ext(spr_scythe_effect_2, image_index, x, y,(size+40)/sprite_get_width(spr_scythe_effect),(size+40)/sprite_get_height(spr_scythe_effect),0,c_white,100);
	}
}