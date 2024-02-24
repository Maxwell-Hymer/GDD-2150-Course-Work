/// @description Insert description here
// You can write your code in this editor

randomize();

next_angle = irandom_range(0, 359);
next_time = room_speed * random_range(1, 9);

alarm_set(0, next_time);
see_player = false;
target = noone;
alive = true;
seen_player = false;
timer_started = false;
























