// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function IsPlayerInventoryEmpty() {
	for(var i = 0; i < array_length(global.inventory); i++) 
		if (global.inventory[i] != 0) return false;	
	
	return true;
	
}