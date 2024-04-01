if (place_meeting(x, y, oPlayer)) {
    oDummy.x= lerp(oDummy.x, 149, 0.1);
    oDummy.y = lerp(oDummy.y, 132, 0.1);
	
	if (abs(oDummy.x - 149) < 0.1 && abs(oDummy.y - 132) < 0.1) {
        // Change the sprite frame
        oDummy.image_index = 1;
		instance_destroy()
		instance_create_layer(x,y,"Top",oTextdrawerV2cuts)	
    }
}
