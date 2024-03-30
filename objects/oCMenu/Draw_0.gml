if (global.menuactive = true){
    draw_set_color(col)
    draw_sprite_ext(sLightDialogue,0,camera_get_view_x(view_camera[0])+16,camera_get_view_y(view_camera[0])+16, 0.2439862, 0.859375, 0, col, 1000);
    draw_sprite_ext(sLightDialogue,0,camera_get_view_x(view_camera[0])+16,camera_get_view_y(view_camera[0])+74, 0.2439862, 1.173397, 0, col, 1000);
    draw_set_font(fText)
    draw_text(camera_get_view_x(view_camera[0])+24,camera_get_view_y(view_camera[0])+22,global.playername)
    draw_set_font(fBattleMenutext)
    draw_text(camera_get_view_x(view_camera[0])+24,camera_get_view_y(view_camera[0])+40,"LV")
    draw_text(camera_get_view_x(view_camera[0])+40,camera_get_view_y(view_camera[0])+40,global.playerLV)
    draw_text(camera_get_view_x(view_camera[0])+24,camera_get_view_y(view_camera[0])+50,"HP")
    draw_text(camera_get_view_x(view_camera[0])+40,camera_get_view_y(view_camera[0])+50,global.playerHP)
    draw_text(camera_get_view_x(view_camera[0])+50,camera_get_view_y(view_camera[0])+50," / ")
    draw_text(camera_get_view_x(view_camera[0])+60,camera_get_view_y(view_camera[0])+50,global.playerMaxHP)
    draw_text(camera_get_view_x(view_camera[0])+24,camera_get_view_y(view_camera[0])+58,"G")
    draw_text(camera_get_view_x(view_camera[0])+40,camera_get_view_y(view_camera[0])+58,global.playerGold)
}

if (global.submenu=0) and (global.menuactive=true){
    draw_sprite(cmenusoul,0,camera_get_view_x(view_camera[0])+28,camera_get_view_y(view_camera[0])+90);
}
else if (global.submenu=1) and (global.menuactive==true){
    draw_sprite(cmenusoul,0,camera_get_view_x(view_camera[0])+28,camera_get_view_y(view_camera[0])+106);
}

if (global.menuactive=true){
    draw_set_font(fText)
    draw_text(camera_get_view_x(view_camera[0])+38,camera_get_view_y(view_camera[0])+90,"ITEM")
    draw_text(camera_get_view_x(view_camera[0])+38,camera_get_view_y(view_camera[0])+106,"STAT")
}
