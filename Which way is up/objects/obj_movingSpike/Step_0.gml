/// changes gravity direction depending on user inout
var max_speed = 30;
var acceleration = 10;

// Input and movement logic
if (keyboard_check_pressed(ord("A"))) {
   self._grav_x = -acceleration;
   self._grav_y = 0; // Reset vertical movement
	image_angle = 270 //rotates sprite to look like the apple is falling in the new direction
	audio_play_sound(snd_woosh, 0, false) //play sound
}
else if (keyboard_check_pressed(ord("D"))) {
   self._grav_x = acceleration;
   self._grav_y = 0; // Reset vertical movement
	image_angle = 90  //rotates sprite to look like the apple is falling in the new direction
	audio_play_sound(snd_woosh, 0, false) //play sound
}
else if (keyboard_check_pressed(ord("W"))) {
   self._grav_y = -acceleration;
   self._grav_x = 0; // Reset horizontal movement
	image_angle = 180  //rotates sprite to look like the apple is falling in the new direction
	audio_play_sound(snd_woosh, 0, false) //play sound
}
else if (keyboard_check_pressed(ord("S"))) {
   self._grav_y = acceleration;
   self._grav_x = 0; // Reset horizontal movement
	image_angle = 0 //rotates sprite to look like the apple is falling in the new directions
	audio_play_sound(snd_woosh, 0, false) //play sound
}

// Gradually increase speed in the current direction
if (self._grav_x != 0) {
   self._grav_x = clamp(self._grav_x + sign(self._grav_x) * acceleration, -max_speed, max_speed);
}
if (self._grav_y != 0) {
   self._grav_y = clamp(self._grav_y + sign(self._grav_y) * acceleration, -max_speed, max_speed);
}

// Predict the next position
var next_x =self.x +self._grav_x;
var next_y =self.y +self._grav_y;

// Collision check with obj_solid
if (place_meeting(next_x,self.y, obj_solid)) {
	
	//play sound 
	audio_play_sound(snd_thump, 0, false); 
	
    // Move to the edge of the obj_solid
    while (!place_meeting(self.x + sign(self._grav_x),self.y, obj_solid)) {
       self.x += sign(self._grav_x);
    }
   self._grav_x = 0;
}
if (place_meeting(self.x, next_y, obj_solid)) {
	
	//play sound 
	audio_play_sound(snd_thump, 0, false);
	
    // Move to the edge of the obj_solid
    while (!place_meeting(self.x,self.y + sign(self._grav_y), obj_solid)) {
       self.y += sign(self._grav_y);
    }
   self._grav_y = 0;
}

// Apply gravity to player's position
self.x +=self._grav_x;
self.y +=self._grav_y;

if(global.didWin == true)
{
	instance_destroy();
}