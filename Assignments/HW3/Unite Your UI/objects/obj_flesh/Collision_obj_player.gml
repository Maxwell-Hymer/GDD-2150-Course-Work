/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 43B665B4
/// @DnDArgument : "soundid" "a_eating"
/// @DnDSaveInfo : "soundid" "a_eating"
audio_play_sound(a_eating, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2250298B
/// @DnDArgument : "code" "//Add to foodCollected count$(13_10)global.foodCollected += 1; "
//Add to foodCollected count
global.foodCollected += 1;

/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 01297532
/// @DnDArgument : "score" "1"
/// @DnDArgument : "score_relative" "1"
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
__dnd_score += real(1);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 52B89314
instance_destroy();