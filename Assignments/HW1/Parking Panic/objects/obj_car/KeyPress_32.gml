/// @DnDAction : YoYo Games.Collisions.If_Any_Object_At
/// @DnDVersion : 1
/// @DnDHash : 2F42BB9C
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "not" "1"
var l2F42BB9C_0 = place_empty(x + 0, y + 0);
if (l2F42BB9C_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 036306E3
	/// @DnDParent : 2F42BB9C
	/// @DnDArgument : "speed" "5"
	speed = 5;

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 66F2ACF7
	/// @DnDParent : 2F42BB9C
	/// @DnDArgument : "soundid" "sd_honk"
	/// @DnDSaveInfo : "soundid" "sd_honk"
	audio_play_sound(sd_honk, 0, 0, 1.0, undefined, 1.0);
}