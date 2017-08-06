/// @description HolyKnight
// vnycall74@naver.com - http://holykisa.tistory.com

image_angle = point_direction(x,y,mouse_x,mouse_y)

x = obj_player.x;
y = obj_player.y;

if(image_angle >= 90 and image_angle <= 270)
	image_yscale = -1;
else
	image_yscale = 1;

show_debug_message(image_angle);