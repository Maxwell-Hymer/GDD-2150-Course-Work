/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7954A77A
/// @DnDArgument : "var" "ammo"
/// @DnDArgument : "not" "1"
if(!(ammo == 0))
{
	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 53244D57
	/// @DnDParent : 7954A77A
	/// @DnDArgument : "expr" "dir"
	var l53244D57_0 = dir;
	switch(l53244D57_0)
	{
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 12D979D9
		/// @DnDParent : 53244D57
		/// @DnDArgument : "const" "1"
		case 1:
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 7F1F5096
			/// @DnDParent : 12D979D9
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_proj_horz"
			/// @DnDSaveInfo : "objectid" "obj_proj_horz"
			instance_create_layer(x + 0, y + 0, "Instances", obj_proj_horz);
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 0C055883
		/// @DnDParent : 53244D57
		/// @DnDArgument : "const" "2"
		case 2:
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 193ADDD7
			/// @DnDParent : 0C055883
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_proj_horz"
			/// @DnDSaveInfo : "objectid" "obj_proj_horz"
			instance_create_layer(x + 0, y + 0, "Instances", obj_proj_horz);
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 4B8127C4
		/// @DnDParent : 53244D57
		/// @DnDArgument : "const" "3"
		case 3:
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 3205974A
			/// @DnDParent : 4B8127C4
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_proj_vert"
			/// @DnDSaveInfo : "objectid" "obj_proj_vert"
			instance_create_layer(x + 0, y + 0, "Instances", obj_proj_vert);
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 65D0FA99
		/// @DnDParent : 53244D57
		/// @DnDArgument : "const" "4"
		case 4:
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 4BA693C0
			/// @DnDParent : 65D0FA99
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_proj_vert"
			/// @DnDSaveInfo : "objectid" "obj_proj_vert"
			instance_create_layer(x + 0, y + 0, "Instances", obj_proj_vert);
			break;
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1953130F
	/// @DnDParent : 7954A77A
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "ammo"
	ammo += -1;
}