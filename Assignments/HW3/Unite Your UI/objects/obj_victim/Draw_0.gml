/// @description Insert description here
// You can write your code in this editor

draw_self();

if(is_debug)
{
	var add_angle = 5;
	var angle_dir = 1;
	var dir = image_angle;
	
	for(var rays = 0; rays <= ray_count; rays++)
	{
		for(var line_length = 0; line_length < ray_length; line_length++)
		{
			var xx = x + lengthdir_x(line_length, dir);
			var yy = y + lengthdir_y(line_length, dir);
			
			if(position_empty(xx, yy) == false)
			{
				if(instance_place(xx, yy, obj_wall) != noone)
				{
					draw_set_color(c_red);
					draw_circle(xx, yy, 5, false);
					break;
				}
				
				if(instance_place(xx, yy, obj_player) != noone)
				{
					draw_set_color(c_red);
					draw_circle(xx, yy, 5, false);
					break;
				}
			}
			
			draw_set_color(c_lime);
			draw_point(xx, yy);
		}
		
		dir += (add_angle * rays) * angle_dir;
		angle_dir *= -1;
	}
}

if(seen_player)
{
	draw_set_color(c_white);
    draw_text(room_width / 2, 32, string(alarm[1] / room_speed)); // Display remaining time
}
























