/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1CCFA859
/// @DnDArgument : "var" "car_sped"
car_sped = 0;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 58E3D837
/// @DnDArgument : "expr" "sprite_index = spr_car_down2"
if(sprite_index = spr_car_down2)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 6DA1A293
	/// @DnDParent : 58E3D837
	/// @DnDArgument : "soundid" "sd_crash"
	/// @DnDSaveInfo : "soundid" "sd_crash"
	audio_play_sound(sd_crash, 0, 0, 1.0, undefined, 1.0);

	/// @DnDAction : YoYo Games.Particles.Effect
	/// @DnDVersion : 1
	/// @DnDHash : 20DC7F3B
	/// @DnDParent : 58E3D837
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "where" "1"
	/// @DnDArgument : "size" "2"
	/// @DnDArgument : "color" "$FF7f7f7f"
	effect_create_above(0, x + 0, y + 0, 2, $FF7f7f7f & $ffffff);

	/// @DnDAction : YoYo Games.Instances.Change_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7265C6E4
	/// @DnDParent : 58E3D837
	/// @DnDArgument : "objind" "obj_broken_down"
	/// @DnDSaveInfo : "objind" "obj_broken_down"
	instance_change(obj_broken_down, true);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1236A0EC
else
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 200102EF
	/// @DnDParent : 1236A0EC
	/// @DnDArgument : "soundid" "sd_crash"
	/// @DnDSaveInfo : "soundid" "sd_crash"
	audio_play_sound(sd_crash, 0, 0, 1.0, undefined, 1.0);

	/// @DnDAction : YoYo Games.Particles.Effect
	/// @DnDVersion : 1
	/// @DnDHash : 6FFE75A2
	/// @DnDParent : 1236A0EC
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "where" "1"
	/// @DnDArgument : "size" "2"
	/// @DnDArgument : "color" "$FF7f7f7f"
	effect_create_above(0, x + 0, y + 0, 2, $FF7f7f7f & $ffffff);

	/// @DnDAction : YoYo Games.Instances.Change_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3CA1AFEB
	/// @DnDParent : 1236A0EC
	/// @DnDArgument : "objind" "obj_broken_up"
	/// @DnDSaveInfo : "objind" "obj_broken_up"
	instance_change(obj_broken_up, true);
}