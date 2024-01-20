// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_gravity(){
	if(place_meeting(x + 0.3, y, obj_solid))
	{
		while(!place_meeting(x + .03, y, obj_solid))
		{
			x += .03;
		}
		x = 0;
	}
	else if(place_meeting( x, y + 0.3, obj_solid))
	{
		while(!place_meeting( x, y + 0.3, obj_solid))
		{
			gravity = 0.3;
		}
		gravity = 0;
	}
}