if (isLerping && instance_exists(humansoul)) {
    var screen_width = fa_center
    var screen_height = fa_bottom
    humansoul.x = lerp(humansoul.x,screen_width, soulspeed);
    humansoul.y = lerp(humansoul.y, screen_height, soulspeed);
}