/// @description Insert description here
// You can write your code in this editor
if keyboard_check_pressed(ord("C"))&& instance_number(oTextdrawerButforsave) + instance_number(oTextdrawerV2) == 0 {
	if Menu {
		oPlayer.can_move = true;
		Menu = false;
		exit;
	}
	
	
		
	oPlayer.can_move = false;
	Menu = !Menu;
	SelectedItem = 0;
	SelectedOptionMenu = 1;
	CurrentOptionMenu = 0;
	audio_play_sound(MenuMove, 1, false);
}
 