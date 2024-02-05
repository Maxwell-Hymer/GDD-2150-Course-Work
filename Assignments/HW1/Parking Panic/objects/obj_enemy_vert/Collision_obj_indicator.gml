/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 29335DB5
/// @DnDArgument : "expr" "car_sped*-1"
/// @DnDArgument : "var" "car_sped"
car_sped = car_sped*-1;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 58E3D837
/// @DnDArgument : "expr" "sprite_index = spr_car_up2"
if(sprite_index = spr_car_up2)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 795AB633
	/// @DnDParent : 58E3D837
	/// @DnDArgument : "spriteind" "spr_car_down2"
	/// @DnDSaveInfo : "spriteind" "spr_car_down2"
	sprite_index = spr_car_down2;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1236A0EC
else
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 5FBE4B86
	/// @DnDParent : 1236A0EC
	/// @DnDArgument : "spriteind" "spr_car_up2"
	/// @DnDSaveInfo : "spriteind" "spr_car_up2"
	sprite_index = spr_car_up2;
	image_index = 0;
}