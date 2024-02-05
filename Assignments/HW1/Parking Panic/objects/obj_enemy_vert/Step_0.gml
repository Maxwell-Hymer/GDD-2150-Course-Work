/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 16F454F4
/// @DnDArgument : "expr" "car_sped"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "y"
y += car_sped;

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 413A4EC6
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "type" "4"
/// @DnDArgument : "size" "1"
/// @DnDArgument : "color" "$FF7F7F7F"
effect_create_below(4, x + 0, y + 0, 1, $FF7F7F7F & $ffffff);