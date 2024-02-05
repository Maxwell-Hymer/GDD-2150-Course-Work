/// @DnDAction : YoYo Games.Movement.Reverse
/// @DnDVersion : 1
/// @DnDHash : 044B1922
direction = (direction + 180) % 360;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 037A3C12
/// @DnDArgument : "expr" "sprite_index = spr_car_left"
if(sprite_index = spr_car_left)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 4F71D483
	/// @DnDParent : 037A3C12
	/// @DnDArgument : "spriteind" "spr_car_right"
	/// @DnDSaveInfo : "spriteind" "spr_car_right"
	sprite_index = spr_car_right;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 72C7F76C
else
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 7353128C
	/// @DnDParent : 72C7F76C
	/// @DnDArgument : "expr" "sprite_index = spr_car_right"
	if(sprite_index = spr_car_right)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 2425294C
		/// @DnDParent : 7353128C
		/// @DnDArgument : "spriteind" "spr_car_left"
		/// @DnDSaveInfo : "spriteind" "spr_car_left"
		sprite_index = spr_car_left;
		image_index = 0;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 34364DB1
	/// @DnDParent : 72C7F76C
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 222D6E86
		/// @DnDParent : 34364DB1
		/// @DnDArgument : "expr" "sprite_index = spr_car_up"
		if(sprite_index = spr_car_up)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 73506F82
			/// @DnDParent : 222D6E86
			/// @DnDArgument : "spriteind" "spr_car_down"
			/// @DnDSaveInfo : "spriteind" "spr_car_down"
			sprite_index = spr_car_down;
			image_index = 0;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 76812B64
		/// @DnDParent : 34364DB1
		else
		{
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 11F47FF1
			/// @DnDParent : 76812B64
			/// @DnDArgument : "expr" "sprite_index = spr_car_down"
			if(sprite_index = spr_car_down)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 5171885C
				/// @DnDParent : 11F47FF1
				/// @DnDArgument : "spriteind" "spr_car_up"
				/// @DnDSaveInfo : "spriteind" "spr_car_up"
				sprite_index = spr_car_up;
				image_index = 0;
			}
		}
	}
}