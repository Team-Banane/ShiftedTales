var canUse = place_meeting(x,y,oPlayer) && oPlayer.can_move && (keyboard_check_pressed(ord("Z")))  && instance_number(oTextdrawerButforsave) == 0;

if !canUse
	exit;

var instantiated = instance_create_depth(x,y,-9999,oTextdrawerButforsave);
oPlayer.can_move=false;
instantiated.text=variable_clone(text, 128);
instantiated.font=font;
instantiated.voice=voice;
instantiated.isProtrait=isProtrait;
instantiated.portrait=portrait;
instantiated.finishedDrawing=finishedDrawing;


