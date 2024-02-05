/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7AC8E867
/// @DnDArgument : "var" "car_sped"
car_sped = 0;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 2EAB9441
/// @DnDArgument : "expr" "sprite_index = spr_car_right2"
if(sprite_index = spr_car_right2)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 6CC5D741
	/// @DnDParent : 2EAB9441
	/// @DnDArgument : "soundid" "sd_crash"
	/// @DnDSaveInfo : "soundid" "sd_crash"
	audio_play_sound(sd_crash, 0, 0, 1.0, undefined, 1.0);

	/// @DnDAction : YoYo Games.Particles.Effect
	/// @DnDVersion : 1
	/// @DnDHash : 7480DC5C
	/// @DnDParent : 2EAB9441
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "where" "1"
	/// @DnDArgument : "size" "2"
	/// @DnDArgument : "color" "$FF7f7f7f"
	effect_create_above(0, x + 0, y + 0, 2, $FF7f7f7f & $ffffff);

	/// @DnDAction : YoYo Games.Instances.Change_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 546803C0
	/// @DnDParent : 2EAB9441
	/// @DnDArgument : "objind" "obj_car_crashed"
	/// @DnDSaveInfo : "objind" "obj_car_crashed"
	instance_change(obj_car_crashed, true);
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 64397163
/// @DnDArgument : "expr" "image_xscale = -1"
if(image_xscale = -1)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 2A451CB8
	/// @DnDParent : 64397163
	/// @DnDArgument : "soundid" "sd_crash"
	/// @DnDSaveInfo : "soundid" "sd_crash"
	audio_play_sound(sd_crash, 0, 0, 1.0, undefined, 1.0);

	/// @DnDAction : YoYo Games.Particles.Effect
	/// @DnDVersion : 1
	/// @DnDHash : 69E37C11
	/// @DnDParent : 64397163
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "where" "1"
	/// @DnDArgument : "size" "2"
	/// @DnDArgument : "color" "$FF7f7f7f"
	effect_create_above(0, x + 0, y + 0, 2, $FF7f7f7f & $ffffff);

	/// @DnDAction : YoYo Games.Instances.Change_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1901002B
	/// @DnDParent : 64397163
	/// @DnDArgument : "objind" "obj_car_crashed"
	/// @DnDSaveInfo : "objind" "obj_car_crashed"
	instance_change(obj_car_crashed, true);

	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 75DB15B0
	/// @DnDParent : 64397163
	/// @DnDArgument : "xscale" "image_xscale*-1"
	/// @DnDArgument : "yscale" ""
	image_xscale = image_xscale*-1;
}