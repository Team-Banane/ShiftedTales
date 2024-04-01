if(flashCount < 2) {
    visible = !visible;
    
	if(visible) {
        alarm[0] = duration;
        instance_create_layer(oPlayer.x, oPlayer.y, "Soul", humansoul);
		oPlayer.can_move=false;
        flashCount++;
    } 
	else 
        alarm[0] = interval;
    
} 
else 
    isLerping = true; // Start lerping after flashing is done

