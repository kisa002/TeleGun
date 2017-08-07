/// @description Move

if(keyboard_check(vk_left) or  keyboard_check(ord("A")))
{		
	if(!place_meeting(x - move_speed, y, obj_block_black))
		x -= move_speed;
}

if(keyboard_check(vk_right) or keyboard_check(ord("D")))
{		
	if(!place_meeting(x + move_speed, y, obj_block_black))
		x += move_speed;
}

if(keyboard_check(vk_up) or keyboard_check(ord("W")))
	if(is_jump == false)
	{
		if(place_empty(x, y-vspeed))
		{
			is_jump = true;
			vspeed = -jump_speed;
		}
	}

show_debug_message(is_jump);

if(place_empty(x, y+1))
{
	gravity = 2;
}
else
{
	gravity = 0;
	
	is_jump = false;
}
	
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