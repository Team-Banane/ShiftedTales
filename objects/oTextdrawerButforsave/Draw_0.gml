var zPressed = keyboard_check_pressed(ord("Z"));
var xPressed = keyboard_check_pressed(ord("X"));
var cPressed = keyboard_check(ord("C"));

var maxLines = floor((spriteHeight - 2 * paddingY) / linesep);
var lines = ds_list_create();
var line = "";
var asteriskLine = false;

// regulate the speed, right now its too fast.
var time = get_timer() + 40000;
while (get_timer() < time) 

if (zPressed) 
	delay = 0;

counter++;

if (index < string_length(text[currentText]) && delay < 1) {
    index++;
		
    var char = string_char_at(text[currentText], index);
        
	var stop = false;	
	
	if (char == "@") {
		switch(string_char_at(text[currentText], index + 1)) {
				
			case "P":
				frame1 = int64(string_char_at(text[currentText], index + 2));
				firstFrame = frame1;
				frame2 =  int64(string_char_at(text[currentText], index + 4));
				text[currentText] = string_delete(text[currentText], index, 5);
				index--;
				stop=true;
				break;
			case "D":
				var str = string_char_at(text[currentText], index + 2) + string_char_at(text[currentText], index + 3);
				delay = int64(str);
				text[currentText] = string_delete(text[currentText], index, 4);
				index--;
				stop = true;
				break;
		}
			
	}
	if (!stop) {
		if (char == "*") {
	        // Add a line break after the asterisk
	        line += "*\n";
	        asteriskLine = true;
	    } 
	
		else {
	        if (asteriskLine && char == " ") {
	            // Skip the space after the asterisk
	            index++;
	            char = string_char_at(text[currentText], index);
	        }
			
	        line += char;
	        asteriskLine = false;
	    }
		
	    var lines = string_count("\n", line) + 1;
	    if (lines > maxLines) {
	        text[currentText] = string_delete(text[currentText], 1, index);
	        index = 0;
	        if (currentText < array_length_1d(text) - 1) {
	            currentText++;
	        } else {
	            // Add a new page if the current text is the last one
	            array_push(text, "");
	            currentText++;
	        }
	    }
		
		if (char != " " && !xPressed)
			audio_play_sound(voice,0,false);
	}		
		
} else if(delay < 1) 
    global.finishedDrawing = true;

if (delay > 0) delay--;

if ((xPressed || cPressed) && !global.finishedDrawing) {
	for(var i = 0; i < string_length(text[currentText]); i++) {
		var c = string_char_at(text[currentText], i);
	
		if (c == "@") {
			switch(string_char_at(text[currentText], i + 1)) {
				
				case "P":
					frame1 = int64(string_char_at(text[currentText], i + 2));
					firstFrame = frame1;
					frame2 =  int64(string_char_at(text[currentText], i + 4));
					text[currentText] = string_delete(text[currentText], i, 5);
					i--;
					break;
				case "D":
					var str = string_char_at(text[currentText], i + 2) + string_char_at(text[currentText], i + 3);
					delay = int64(str);
					text[currentText] = string_delete(text[currentText], i, 4);
					i--;
					break;
			}
	
		}
	}
    index = string_length(text[currentText]);
	delay = 0;
	audio_play_sound(voice,0,false);
    global.finishedDrawing = true;
}

if (global.finishedDrawing) {
    if ((zPressed || cPressed) && currentText < array_length_1d(text) - 1) {
        currentText++;
        index = 0;
        global.finishedDrawing = false;
    } else if (zPressed) {
        oPlayer.can_move = true;
        var objX = camera_get_view_width(view_camera[0]) / 2;
        var objY = camera_get_view_height(view_camera[0]) / 2;
        instance_create_layer(objX, objY, "Top", oSavepart2);
		global.saveactive=true;
        instance_destroy();
    }
}

if ((counter + 1) % 3 == 0 && (!global.finishedDrawing || (global.finishedDrawing && frame != firstFrame))) {
    frame = frame1;    
    frame1 = frame2;
    frame2 = frame;
}

draw_set_font(font);
    
var desiredWidth = 289;
var desiredHeight = 76;

// Calculate scale factors
scaleX = desiredWidth / sprite_get_width(sprite);
scaleY = desiredHeight / sprite_get_height(sprite);

// Draw the sprite with the scale factors
draw_sprite_ext(sprite, 0, textbox_x, textbox_y, scaleX, scaleY, 0, col, 1);

    
rect_x = textbox_x - 20;
rect_y = textbox_y + 20;
rect_width = spriteWidth - 25;
rect_height = spriteHeight - 25;

draw_set_color(c_green);

    
draw_set_alpha(0);

draw_rectangle(rect_x, rect_y, rect_x + rect_width, rect_y + rect_height, false);

    
draw_set_alpha(1);

    
draw_set_color(col);

portraitOffset = (isProtrait) ? 64 : 0;
    
var max_text_width = (rect_width - 4 * paddingX) - portraitOffset;
var max_text_height = rect_height - 2 * paddingY;

if (!(font = fPapyrus)) {
    draw_text(textbox_x + paddingX + portraitOffset, textbox_y + paddingY, "* ");
}
draw_text_ext(15 + textbox_x + paddingX + portraitOffset, textbox_y + paddingY, string_copy(text[currentText], 1, index), linesep, max_text_width);

var offsetY = 36;
var offsetX = 32;

if (isProtrait)
    draw_sprite_ext(portrait, frame, textbox_x + offsetX, textbox_y + offsetY, 1, 1, 0, col, 1);
