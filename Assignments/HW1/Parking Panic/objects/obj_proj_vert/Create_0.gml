/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 3EBBD9FE
/// @DnDArgument : "expr" "obj_car.dir"
var l3EBBD9FE_0 = obj_car.dir;
switch(l3EBBD9FE_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 402E045E
	/// @DnDParent : 3EBBD9FE
	/// @DnDArgument : "const" "3"
	case 3:
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 110F3160
		/// @DnDParent : 402E045E
		/// @DnDArgument : "speed" "-10"
		/// @DnDArgument : "type" "2"
		vspeed = -10;
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 44A2E4FE
	/// @DnDParent : 3EBBD9FE
	/// @DnDArgument : "const" "4"
	case 4:
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 4E368A1A
		/// @DnDParent : 44A2E4FE
		/// @DnDArgument : "speed" "10"
		/// @DnDArgument : "type" "2"
		vspeed = 10;
		break;
}