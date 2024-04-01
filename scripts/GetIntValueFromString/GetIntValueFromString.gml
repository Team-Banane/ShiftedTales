// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GetIntValueFromString(identifier, str){
	
	for(var i = 0; i < string_length(str); i++) {
		var c = string_char_at(str, i);
		
		if (c != "@" || string_char_at(str, i+1) != identifier) continue;
		
		var str1 = string_char_at(str, i+2) + string_char_at(str, i+3);
		return int64(str1);
		
	}
	
	return noone;
}