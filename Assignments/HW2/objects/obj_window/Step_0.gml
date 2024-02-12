if (y > room_height + 360)
{
    var minDistance = 350; // Minimum distance between windows
    var new_x;
    var new_y = -200;

    var overlapping = true;

    // Loop until a non-overlapping position is found
    while (overlapping)
    {
        overlapping = false; // Assume the new position is not overlapping initially
        new_x = floor(random_range(200, room_width - 200 + 1)); // Generate new x-coordinate

        // Check for overlap with existing windows
        with (obj_window)
        {
            if (point_distance(new_x, new_y, x, y) < minDistance)
            {
                overlapping = true; // Overlap found
                break;
            }
        }
    }

    x = new_x;
    y = new_y;

    // Create civilian or fire object based on chance
    var chance = floor(random_range(0, 3 + 1));
    sprite_index = spr_window;
    image_index = 0;

    switch (chance)
    {
        case 0:
            instance_create_layer(x, y, "Spawns", obj_civilian);
            sprite_index = spr_window;
            image_index = 1;
            break;

        case 1:
            instance_create_layer(x, y, "Spawns", obj_fire);
            sprite_index = spr_window;
            image_index = 2;
            break;
    }
}