/// @description HolyKnight
// vnycall74@naver.com - http://holykisa.tistory.com

/*
var inst = place_meeting(x, y, obj_block_black);

if(inst != noone)
{
	//obj_player.x = x;
	//obj_player.y = y;

	with(inst)
	{
		if(collision_line(x, y, x + sprite_width, y, id, false, false))
		{
			obj_player.x = x;
			obj_player.y = y + sprite_width / 2;
		}
	}
	
	instance_destroy();
}
*/

/*var inst = place_meeting(x + 9, y, obj_block_black);

if(inst != 0)
{
	obj_player.x = other.x - sprite_width/2;
	inst = 0;
}