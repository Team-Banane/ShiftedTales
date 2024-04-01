
if (global.saveactive=true)
	draw_sprite_ext(sLightDialogue, 0,objX ,objY,0.7250859,1.34375, 0, c_red, 1000);


if (global.savedtrue=true){
	draw_set_color(c_yellow)

	draw_set_font(fText)
	draw_text(objX+15,objY+15,global.playername)
	draw_text(objX+95,objY+15,"LV")
	draw_text(objX+115,objY+15,global.playerLV)
	draw_text(objX+155,objY+15,"0:00")
	draw_text(objX+15,objY+35,global.area)


	draw_set_color(c_yellow)
	draw_text(objX+45,objY+55,"SAVE")
	draw_text(objX+115,objY+55,"RETURN")

}
else if (global.savedtrue=false){
	draw_set_color(c_white)
	draw_text(objX+45,objY+55,"SAVE")
	draw_text(objX+115,objY+55,"RETURN")
	draw_set_font(fText)
	draw_text(objX+15,objY+15,global.playername)
	draw_text(objX+95,objY+15,"LV")
	draw_text(objX+115,objY+15,global.playerLV)
	draw_text(objX+155,objY+15,"0:00")
	draw_text(objX+15,objY+35,global.area)

}

if (global.saveState=0) and (global.savedtrue=false)
	draw_sprite(cmenusoul,0,objX+35,objY+55)
 
else if (global.saveState=1)
	draw_sprite(cmenusoul,0,objX+105,objY+55)
