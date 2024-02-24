// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DoSomething(){
	if(!audio_is_playing(Audio_for_something))
	{
		audio_play_sound(Audio_for_something, 1, false);
		instance_create_depth(130, 40, 0, obj_message);
	}
}