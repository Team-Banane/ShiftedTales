// Check keyboard input
if (keyboard_check_pressed(vk_left)) and (global.saveactive=true) 
    global.saveState = 0; // Set savemenu state to 0

else if (keyboard_check_pressed(vk_right)) 
    global.saveState = 1; // Set savemenu state to 1



// Check if player presses 'Z' while submenu state is at 0
if (keyboard_check_pressed(ord("Z")) && global.saveState = 0) {
    global.savedtrue = true; // Set itemtrue to true
	global.canclosewithZ=true
	global.playersaved=true
	global.playerroom=room
}


if (instance_exists(oSavepart2)) and (keyboard_check_pressed(ord("X"))){
	global.saveactive=false;
	global.savedtrue=false
	
	instance_destroy()	
}








if (global.savedtrue=true){
	if file_exists("Save.sav"){
	file_delete("Save.sav")
}
ini_open("Save.sav")
var Savedroom=room
ini_write_real("Save1","room",Savedroom);
ini_write_real("Save1","x",oPlayer.x)
ini_write_real("Save1","y",oPlayer.y)
}





