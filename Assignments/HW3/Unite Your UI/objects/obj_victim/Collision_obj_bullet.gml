/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 6C931D86
/// @DnDArgument : "steps" "-1"
/// @DnDArgument : "alarm" "alarm[1]"
alarm_set(alarm[1], -1);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6B2E8E49
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "alive"
alive = false;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 1EFF3045
instance_destroy();

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 56CA5E46
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_flesh"
/// @DnDSaveInfo : "objectid" "obj_flesh"
instance_create_layer(x + 0, y + 0, "Instances", obj_flesh);