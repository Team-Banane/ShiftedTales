
if global.cutscene{
	time += 1
	if time >= 60 and time < 120
		instance_create_depth(x,y,-10000,objPrebattle)
	
	if time > 120{
		audio_play_sound(snd_yoursadfriend,1,1,true)
		room_goto(r_napstablook_encounter)
	}
}