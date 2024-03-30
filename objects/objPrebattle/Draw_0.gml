if(visible) {
     screen_width = window_get_height()
     screen_height = window_get_width()
    draw_set_color(c_black);
    draw_rectangle(0, 0, screen_width, screen_height, false);
}