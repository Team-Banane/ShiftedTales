var canUse = place_meeting(x,y,oPlayer) && oPlayer.can_move && instance_number(oTextdrawerV2) == 0;

if !canUse
exit;	

var instantiated = instance_create_depth(x,y,-9999,oTextdrawerV2);
oPlayer.can_move=false;
instantiated.text=variable_clone(text, 128);
instantiated.font=font;
instantiated.voice=sound;
instantiated.isProtrait=isProtrait;
instantiated.portrait=portrait;
instantiated.finishedDrawing=finishedDrawing;
