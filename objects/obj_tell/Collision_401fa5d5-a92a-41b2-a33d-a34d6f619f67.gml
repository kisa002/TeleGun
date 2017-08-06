/// @description HolyKnight
// vnycall74@naver.com - http://holykisa.tistory.com

//ox = other.x;
//oy = other.y;
//sw = other.sprite_width;

sh = other.sprite_height;
if(collision_line(other.x, other.y, other.x, other.y + other.sprite_height, id, false, false))
{
	obj_player.x = x - obj_player.sprite_width / 2;
	obj_player.y = y;
}
else if(collision_line(other.x, other.y, other.x + other.sprite_width, other.y, id, false, false))
{
	obj_player.x = x;
	obj_player.y = y - obj_player.sprite_height / 2;
}
else if(collision_line(other.x + other.sprite_width, other.y, other.x + other.sprite_width, other.y + other.sprite_height, id, false, false))
{
	obj_player.x = x + obj_player.sprite_width / 2;
	obj_player.y = y;
}
else if(collision_line(other.x, other.y, other.x + other.sprite_width, other.y + other.sprite_height, id, false, false))
{
	obj_player.x = x;
	obj_player.y = y + obj_player.sprite_height / 2;
}

instance_destroy();