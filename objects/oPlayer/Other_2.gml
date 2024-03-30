if file_exists("Save.sav"){
	ini_open("Save.sav");
	var loadedroom=ini_read_real("Save1","room",Room1)
	x=ini_read_real("Save1","x",0)
	y=ini_read_real("Save1","y",0)
	ini_close()
	room_goto(loadedroom)
}
	
	