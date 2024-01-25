/// @description changes button sprite and opens door
// You can write your code in this editor
sprite_index = spr_buttonPressed

if(instance_exists(obj_door))
{
	instance_destroy(obj_door)
}
