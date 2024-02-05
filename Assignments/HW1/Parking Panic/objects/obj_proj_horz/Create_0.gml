/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 489C81AB
/// @DnDArgument : "expr" "obj_car.dir"
var l489C81AB_0 = obj_car.dir;
switch(l489C81AB_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 467C8D29
	/// @DnDParent : 489C81AB
	/// @DnDArgument : "const" "1"
	case 1:
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 23AF1265
		/// @DnDParent : 467C8D29
		/// @DnDArgument : "speed" "10"
		speed = 10;
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 5881E14B
	/// @DnDParent : 489C81AB
	/// @DnDArgument : "const" "2"
	case 2:
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 499157B8
		/// @DnDParent : 5881E14B
		/// @DnDArgument : "speed" "-10"
		speed = -10;
		break;
}