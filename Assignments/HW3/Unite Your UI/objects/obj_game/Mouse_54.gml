/// @description Insert description here
// You can write your code in this editor

if(!instance_exists(obj_in_game_menu))
{
	Menu(
		mouse_x,
		mouse_y,
		[
			["Disable Vision Cones", DisableCone],
			["Enable Vision Cones", EnableCone],
			["Button That Does Something", DoSomething],
			["Exit Menu", -1]
		],
		"Choose an option!"
	)
}































