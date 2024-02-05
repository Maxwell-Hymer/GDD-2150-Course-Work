/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 4229173C
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "type" "4"
/// @DnDArgument : "size" "1"
/// @DnDArgument : "color" "$FF7F7F7F"
effect_create_below(4, x + 0, y + 0, 1, $FF7F7F7F & $ffffff);

/// @DnDAction : YoYo Games.Instance Variables.If_Score
/// @DnDVersion : 1
/// @DnDHash : 428FB45D
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "1000"
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
if(__dnd_score >= 1000)
{
	/// @DnDAction : YoYo Games.Rooms.Next_Room
	/// @DnDVersion : 1
	/// @DnDHash : 28781E52
	/// @DnDParent : 428FB45D
	room_goto_next();
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 16C6F2E3
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_broken_down"
/// @DnDSaveInfo : "object" "obj_broken_down"
var l16C6F2E3_0 = instance_place(x + 0, y + 0, [obj_broken_down]);
if ((l16C6F2E3_0 > 0))
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 5BB419D8
	/// @DnDParent : 16C6F2E3
	speed = 0;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 56AE61E6
else
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 61400A18
	/// @DnDParent : 56AE61E6
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_broken_up"
	/// @DnDSaveInfo : "object" "obj_broken_up"
	var l61400A18_0 = instance_place(x + 0, y + 0, [obj_broken_up]);
	if ((l61400A18_0 > 0))
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 5B396FC1
		/// @DnDParent : 61400A18
		speed = 0;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 10D1CF4E
	/// @DnDParent : 56AE61E6
	else
	{
		/// @DnDAction : YoYo Games.Collisions.If_Object_At
		/// @DnDVersion : 1.1
		/// @DnDHash : 01923890
		/// @DnDParent : 10D1CF4E
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "object" "obj_car_crashed"
		/// @DnDSaveInfo : "object" "obj_car_crashed"
		var l01923890_0 = instance_place(x + 0, y + 0, [obj_car_crashed]);
		if ((l01923890_0 > 0))
		{
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 15FE2EE5
			/// @DnDParent : 01923890
			speed = 0;
		}
	}
}