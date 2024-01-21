//checks if checkpoint ini file is already saved
if(is_on == 1)
{
	exit;
}

is_on = 1;

image_index = 1;
//creates ini file to save data for checkpoint
ini_open("check.ini");

ini_write_real("player", "x", other.x);

ini_write_real("player", "y", other.y);

ini_close();




