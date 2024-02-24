/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 5ABA3185
/// @DnDArgument : "soundid" "a_ambient"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "soundid" "a_ambient"
var l5ABA3185_0 = a_ambient;
if (!audio_is_playing(l5ABA3185_0))
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 5D8740C4
	/// @DnDParent : 5ABA3185
	/// @DnDArgument : "soundid" "a_ambient"
	/// @DnDArgument : "gain" "0.2"
	/// @DnDSaveInfo : "soundid" "a_ambient"
	audio_play_sound(a_ambient, 0, 0, 0.2, undefined, 1.0);
}