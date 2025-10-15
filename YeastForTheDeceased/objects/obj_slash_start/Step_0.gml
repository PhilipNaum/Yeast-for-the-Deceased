if (keyboard_check_pressed(vk_space))
{
	sprite_index = spr_scythe_effect_2
    image_speed=1
}

if(sprite_index == spr_scythe_effect_2 && image_index ==12){
	room_goto(rm_menu)
}