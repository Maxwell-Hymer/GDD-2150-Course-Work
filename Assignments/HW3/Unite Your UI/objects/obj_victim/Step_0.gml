/// @description Insert description here
// You can write your code in this editor

image_angle = lerp(image_angle, next_angle, 0.02);
direction = image_angle;

see_player = false;

var add_angle = 5;
var angle_dir = 1;
var dir = image_angle;

if(seen_player)
{
	if (!timer_started)
	{
	    timer_started = true;
		alarm[1] = room_speed * 10;
	}
	point_direction(x, y, target.x, target.y);
	move_towards_point(target.x*-1, target.y*-1, 1);
	angle_to_player = point_direction(x, y, obj_player.x, obj_player.y);
	image_angle = angle_to_player;
}	

var buffer_space = 15; // Adjust this value as needed

// Collision handling
if (place_meeting(x + hspeed, y, obj_wall)) {
    var wall_instance = instance_place(x + hspeed, y, obj_wall);
    if (wall_instance != noone && point_distance(x, y, wall_instance.x, wall_instance.y) <= buffer_space) {
        hspeed = 0;
    }
}

if (place_meeting(x, y + vspeed, obj_wall)) {
    var wall_instance = instance_place(x, y + vspeed, obj_wall);
    if (wall_instance != noone && point_distance(x, y, wall_instance.x, wall_instance.y) <= buffer_space) {
        vspeed = 0;
    }
}
























