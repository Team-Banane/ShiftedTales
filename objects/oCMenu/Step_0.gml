// Step Event
if (keyboard_check_pressed(ord("C"))) {
    global.menuactive = true;
    global.selectionui=true;
}



if (keyboard_check_pressed(ord("X"))) and (global.canclose=true){
    global.menuactive=false;
}

if (keyboard_check_pressed(vk_down)) and (global.menuactive=true){
    global.submenu=1;
}

if (keyboard_check_pressed(vk_up)) and (global.menuactive=true){
    global.submenu=0;
}

// Step Event
// Step Event
if (keyboard_check_pressed(ord("Z"))) and (global.menuactive=true)  {
    if (global.submenu == 1) {
        global.statopened = true;
		global.canclose=false;
        instance_create_layer(x,y,"Top",oCmenupart2);
    } else if (global.submenu == 0) {
        global.itemopened = true;
		global.canclose=false
        instance_create_layer(x,y,"Top",oCmenupart2);
    }
}

if (instance_exists(oCmenupart2)) and (keyboard_check_pressed(ord("X"))){
	instance_destroy(oCmenupart2);
	global.statopened=false
	global.itemopened=false
	global.canclose=true;
}

