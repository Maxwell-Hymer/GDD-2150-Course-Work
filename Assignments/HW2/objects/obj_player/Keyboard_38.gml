/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0FC94EED
/// @DnDArgument : "var" "dbl_jmp"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "true"
if(!(dbl_jmp == true))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2A4B6FBB
	/// @DnDParent : 0FC94EED
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "dbl_jmp"
	dbl_jmp = true;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 40A03983
	/// @DnDParent : 0FC94EED
	/// @DnDArgument : "speed" "-35"
	/// @DnDArgument : "type" "2"
	vspeed = -35;
}