var canUse = place_meeting(x,y,oPlayer) && oPlayer.can_move && (keyboard_check_pressed(ord("Z")))  && instance_number(oTextdrawerButforsave) == 0 and (global.saveactive=false);

if !canUse
	exit;

var instantiated = instance_create_depth(x,y,-9999,oTextdrawerButforsave);
oPlayer.can_move=false;
instantiated.text=variable_clone(text, 128);
instantiated.font=font;
instantiated.voice=voice;
instantiated.isProtrait=isProtrait;
instantiated.portrait=portrait;


// Check if all text has been drawn
if (global.finishedDrawing) {
    // All text has been drawn, create a new object
    instance_create_layer(x, y,"Top" , oSavepart2);
    // Reset the finishedDrawing variable
    global.finishedDrawing = false;
}
