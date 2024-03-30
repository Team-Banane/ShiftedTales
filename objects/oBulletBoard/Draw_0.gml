var border_l = 320 - (current_width / 2);
var border_r = 320 + (current_width / 2);
var border_u = 384 - current_height 
var border_d = 384;

var hp_barwidth = (global.playerMaxHP)
var hp_barwidth_fill = (global.playerHP)

draw_set_color(c_white)
draw_rectangle(border_l - 4, border_u - 4, border_r + 4, border_d + 4,false);
draw_set_color(c_black)
draw_rectangle(border_l, border_u, border_r, border_d,false);

oSoul.x = clamp(oSoul.x, border_l + 4, border_r - 4)
oSoul.y = clamp(oSoul.y, border_u + 8, border_d - 8)
draw_set_color(c_white);
draw_set_font(fBattleMenutext)
draw_text(360 + hp_barwidth, 400, string(global.playerHP) + " / " + string(global.playerMaxHP));
draw_set_font(fBattleFont)
draw_text(260, 400, "HP");

draw_set_color(c_red)
draw_rectangle(370, 400, 300 + hp_barwidth, 418, false)
draw_set_color(c_yellow)
draw_rectangle(370, 400, 300 + hp_barwidth_fill, 418, false)