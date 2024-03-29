/// changes gravity direction depending on user inout
var max_speed = 30;
var acceleration = 10;

// Input and movement logic
if (keyboard_check_pressed(ord("A"))) {
    obj_player._grav_x = -acceleration;
    obj_player._grav_y = 0; // Reset vertical movement
	image_angle = 270 //rotates sprite to look like the apple is falling in the new direction
	audio_play_sound(snd_woosh, 0, false) //play sound
}
else if (keyboard_check_pressed(ord("D"))) {
    obj_player._grav_x = acceleration;
    obj_player._grav_y = 0; // Reset vertical movement
	image_angle = 90  //rotates sprite to look like the apple is falling in the new direction
	audio_play_sound(snd_woosh, 0, false) //play sound
}
else if (keyboard_check_pressed(ord("W"))) {
    obj_player._grav_y = -acceleration;
    obj_player._grav_x = 0; // Reset horizontal movement
	image_angle = 180  //rotates sprite to look like the apple is falling in the new direction
	audio_play_sound(snd_woosh, 0, false) //play sound
}
else if (keyboard_check_pressed(ord("S"))) {
    obj_player._grav_y = acceleration;
    obj_player._grav_x = 0; // Reset horizontal movement
	image_angle = 0 //rotates sprite to look like the apple is falling in the new directions
	audio_play_sound(snd_woosh, 0, false) //play sound
}

// Gradually increase speed in the current direction
if (obj_player._grav_x != 0) {
    obj_player._grav_x = clamp(obj_player._grav_x + sign(obj_player._grav_x) * acceleration, -max_speed, max_speed);
}
if (obj_player._grav_y != 0) {
    obj_player._grav_y = clamp(obj_player._grav_y + sign(obj_player._grav_y) * acceleration, -max_speed, max_speed);
}

// Predict the next position
var next_x = obj_player.x + obj_player._grav_x;
var next_y = obj_player.y + obj_player._grav_y;

// Collision check with obj_solid or obj_door (horizontal)
if (place_meeting(next_x, obj_player.y, obj_solid) || place_meeting(next_x, obj_player.y, obj_door)) {
    // Play sound 
    audio_play_sound(snd_thump, 0, false); 

    // Move to the edge of the obj_solid or obj_door
    while (!place_meeting(obj_player.x + sign(obj_player._grav_x), obj_player.y, obj_solid) && !place_meeting(obj_player.x + sign(obj_player._grav_x), obj_player.y, obj_door)) {
        obj_player.x += sign(obj_player._grav_x);
    }
    obj_player._grav_x = 0;
}

// Collision check with obj_solid or obj_door (vertical)
if (place_meeting(obj_player.x, next_y, obj_solid) || place_meeting(obj_player.x, next_y, obj_door)) {
    // Play sound 
    audio_play_sound(snd_thump, 0, false);

    // Move to the edge of the obj_solid or obj_door
    while (!place_meeting(obj_player.x, obj_player.y + sign(obj_player._grav_y), obj_solid) && !place_meeting(obj_player.x, obj_player.y + sign(obj_player._grav_y), obj_door)) {
        obj_player.y += sign(obj_player._grav_y);
    }
    obj_player._grav_y = 0;
}

// Apply gravity to player's position
obj_player.x += obj_player._grav_x;
obj_player.y += obj_player._grav_y;