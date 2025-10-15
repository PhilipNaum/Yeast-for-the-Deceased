
if(position_meeting(mouse_x,mouse_y,self)){
	draw_sprite_ext(spr_outline,image_index,x,y,250/sprite_width,250/sprite_height,0,c_yellow,100);
	draw_sprite_ext(spr_big_bun_jumping, image_index, x, y,image_xscale,image_yscale,0,c_white,100);
}
else{
	draw_sprite_ext(spr_big_bun_jumping, image_index, x, y,image_xscale,image_yscale,0,c_white,100);
}

if(anchored){
	draw_sprite_ext(spr_outline,image_index,x,y,250/sprite_width,250/sprite_height,0,c_red,100);
	draw_sprite_ext(spr_big_bun_jumping, image_index, x, y,image_xscale,image_yscale,0,c_white,100);
}
