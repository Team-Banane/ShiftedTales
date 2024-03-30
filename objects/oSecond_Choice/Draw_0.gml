var right_key = keyboard_check_pressed(vk_right)
var left_key = keyboard_check_pressed(vk_left)
var confirm_key = keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_enter)
draw_text(textbox_x + 30,textbox_y,text)

if global.on_second_ and right_key or left_key{
global.on_second_ = false
global.on_first_ = true
draw_set_color(c_white)
} else if global.on_second_ {
draw_set_color(c_yellow)	
} 



if confirm_key{
if global.on_first_{
	global.choice_chosen = 1
}else if global.on_second_{
	global.choice_chosen = 2
}
}