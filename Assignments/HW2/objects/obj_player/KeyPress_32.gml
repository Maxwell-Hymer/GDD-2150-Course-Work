/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2B4C2898
/// @DnDArgument : "var" "room"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "rm_extension"
if(!(room == rm_extension))
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 700CFD8A
	/// @DnDParent : 2B4C2898
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_foam"
	/// @DnDArgument : "layer" ""Spawns""
	/// @DnDSaveInfo : "objectid" "obj_foam"
	instance_create_layer(x + 0, y + 0, "Spawns", obj_foam);

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 1358E02F
	/// @DnDParent : 2B4C2898
	/// @DnDArgument : "soundid" "snd_player_shoot"
	/// @DnDSaveInfo : "soundid" "snd_player_shoot"
	audio_play_sound(snd_player_shoot, 0, 0, 1.0, undefined, 1.0);
}