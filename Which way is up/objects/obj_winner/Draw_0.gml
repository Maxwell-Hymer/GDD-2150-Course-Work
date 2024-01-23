//checks if they won, if so outputs winner text
if(global.didWin == true)
{

draw_set_font(win_font);
draw_set_color(c_yellow);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text_transformed(room_width/2, room_height/2, "Nice Job!\nNext Level Incoming...", 1.2 , 1.2, 0);
}



