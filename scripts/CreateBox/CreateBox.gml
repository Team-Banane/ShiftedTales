// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CreateBox(text, x, y, width, height, font, textOffsetX, textOffsetY, newlineOffset){

	draw_sprite_stretched(sLightDialogue, 0, x, y, width, height); 
	
	draw_set_font(font);
	draw_set_color(c_white);
	
	var currentOffset = 0;
	
	for(var i = 0; i < array_length(text); i++)
	{
		txt = text[i];
		
		var offset = newlineOffset;
		
		if(GetIntValueFromString("N", txt) != noone) {
			offset = GetIntValueFromString("N", txt);
			txt = string_delete(txt, 0, 4);
		}
		
		if (i == 0) offset = 0;
		
		currentOffset += offset;
		
		draw_text(x + textOffsetX, y + textOffsetY + currentOffset, txt);
		
	}
}