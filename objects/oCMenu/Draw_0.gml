/// @description Insert description here
// You can write your code in this editor

if !Menu 
	exit;

var initBox1X = camera_get_view_x(view_camera[0]) + 20;
var initBox1Y = camera_get_view_y(view_camera[0]) + 20;

if (display_get_height() / 2 < oPlayer.y - camera_get_view_y(view_camera[0])) initBox1Y =  camera_get_view_y(view_camera[0]) + display_get_height() - 80;

CreateBox([global.playername], initBox1X, initBox1Y, 75, 55, fDeterminationSansWeb, 6, 6, 20);


draw_set_font(fBattleMenutext);
draw_text(initBox1X + 8, initBox1Y + 25, "LV  " + string(global.playerLV));
draw_text(initBox1X + 8, initBox1Y+ 34, "HP  " + string(global.playerHP) + "/" + string(global.playerMaxHP));
draw_text(initBox1X + 8, initBox1Y + 43, "G   " + string(global.playerGold));

var initBox2X = initBox1X;
var initBox2Y = initBox1Y + 60;

if (display_get_height() / 2 < oPlayer.y - camera_get_view_y(view_camera[0])) initBox2Y = initBox1Y - 82;

draw_set_color(c_white);
CreateBox(["ITEM", "STAT", "CELL"], initBox2X, initBox2Y, 75, 78, fDeterminationSansWeb, 27, 11, 20);

draw_set_color(c_gray);
if (IsPlayerInventoryEmpty()) draw_text(initBox2X + 27, initBox2Y + 11, "ITEM" )

if keyboard_check_pressed(ord("X")) {
	if CurrentOptionMenu == 0 {
		Menu = false;
		oPlayer.can_move = true;
	}
	else if CurrentOptionMenu > 0 {
		SelectedOptionMenu = 1;
		CurrentOptionMenu = 0;
	}
}

if CurrentOptionMenu == 0 {
	if keyboard_check_pressed(vk_up) {
		audio_play_sound(MenuMove, 1, false);
		SelectedOptionMenu -= 1;
		if (SelectedOptionMenu < 1) {
			SelectedOptionMenu = 3;
		}
	}
	if keyboard_check_pressed(vk_down) {
		audio_play_sound(MenuMove, 1, false);
		SelectedOptionMenu += 1;
		if (SelectedOptionMenu > 3) {
			SelectedOptionMenu = 1;
		}
	}
	if keyboard_check_pressed(ord("Z")) {
		audio_play_sound(Select, 1, false);
		CurrentOptionMenu = SelectedOptionMenu;
		SelectedOptionMenu = 0;
		SelectedItem = 0;
		
		exit;
	}
}



switch (CurrentOptionMenu)
{
	case 0:
		draw_sprite_ext(Sprite24, 0, initBox2X + 17, initBox2Y - 2 + (20 * SelectedOptionMenu), 1, 1, 0, c_white, 1);
		break;
	case 1:
	
		CreateBox(["Something", "Something", "Something"], initBox1X + 80, initBox1Y, 165, 175, fDeterminationSansWeb, 24, 16, 14);
		
		if keyboard_check_pressed(vk_up) {
			audio_play_sound(MenuMove, 1, false);
			SelectedItem -= 1;

		}
		if keyboard_check_pressed(vk_down) {
			audio_play_sound(MenuMove, 1, false);
			SelectedItem += 1;

		}

		
		draw_sprite_ext(Sprite24, 0, initBox1X + 95, initBox1Y + 24 + (14 * SelectedItem), 1, 1, 0, c_white, 1);
		break;
	case 2:
		CreateBox(["\"" + string(global.playername) + "\"",
		           "",
				   "LV  " + string(global.playerLV),
				   "HP  " + string(global.playerHP) +"/" + string(global.playerMaxHP),
				   "",
				   "AT  " + string(global.playerATK) + " (1)" + "          EXP: " + string(global.playerEXP),
				   "DF  "+ string(global.playerDEF) +" (0)          NEXT: " + string(10),
				   "",
				   "WEAPON: " + "placeholder",
				   "ARMOR: " + "placeholder",
				   "@N20MONEY: " + string(global.playerGold)], initBox1X + 80, initBox1Y, 170, 210, fDeterminationSansWeb, 14, 18, 15);
		
		break;
}