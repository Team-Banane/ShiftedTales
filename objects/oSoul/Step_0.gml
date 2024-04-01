right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
down_key = keyboard_check(vk_down);
up_key = keyboard_check(vk_up);

x_spd = (right_key - left_key) * global.soul_spd;
y_spd = (down_key - up_key) * global.soul_spd;

x += x_spd;
y += y_spd;

if global.inv_frames > 0{
	global.inv_frames -= 1;
	image_speed = 1;
} 
else {
 image_speed = 0;	
 image_index = 0;
}
