//each time player dies shows death count
draw_set_font(death_font);
draw_set_color(c_red);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text_transformed(room_width/2, room_height/2, string(global.death),2.2 , 2.2, 0);

draw_set_font(death_font);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text_transformed(room_width/2, room_height/2, string(global.death),2 , 2, 0);

if(alarm[3] < 0)
{
alarm[3] = 30;
}