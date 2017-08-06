/// @description Move

if(keyboard_check(vk_left) or  keyboard_check(ord("A")))
{		
	if(!place_meeting(x - move_speed, y, obj_block_black))
		x -= move_speed;
}
else if(keyboard_check(vk_right) or keyboard_check(ord("D")))
{		
	if(!place_meeting(x + move_speed, y, obj_block_black))
		x += move_speed;
}
else
	image_speed = 0;
	
	
if(mouse_check_button_pressed(mb_left))
{
	if(!instance_exists(obj_tell))
	{
		var tell = instance_create_depth(x + lengthdir_x(64, image_angle), y + lengthdir_y(64, image_angle), -100, obj_tell);
	
		with(tell)
		{
			speed = obj_player.tell_speed;
			direction = point_direction(x,y,mouse_x,mouse_y);
		}
	}
}

if(keyboard_check_pressed(ord("R")))
	game_restart();