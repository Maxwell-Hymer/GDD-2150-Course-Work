/// @description Insert description here
// You can write your code in this editor


//Get input
var moveX = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var moveY = keyboard_check(ord("S")) - keyboard_check(ord("W"));

//Face character in correct position
if (moveX != 0) 
{
	image_xscale = moveX;
}

//Calculate hsp and vsp
hsp = moveX * move_speed
vsp = moveY * move_speed

//Collision for: Wall
if (place_meeting(x + hsp, y, obj_wall)) {
	
	while(!place_meeting(x + sign(hsp), y, obj_wall)) {
		
		x += sign(hsp)
	}
	
	hsp = 0
}
x += hsp

if(place_meeting(x, y+vsp, obj_wall)){
	while(!place_meeting(x, y+sign(vsp), obj_wall)){
		y += sign(vsp);	
	}
	vsp = 0;
}
y += vsp

//Gun stuff
cd--;

x = obj_player.x;
y = obj_player.y;

if (cd <= 0 && mouse_check_button(mb_left)) {
	cd = cdValue;
	with (instance_create_layer(x, y, "bullets", obj_bullet)) {
		direction = point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y);
		speed = 8;
	}
}