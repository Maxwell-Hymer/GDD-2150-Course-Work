//when room is restarted, checks to see if the player did get a checkpoint and sends them to it
var l4B37D37F_0 = file_exists("check.ini");
if(l4B37D37F_0)
{
	ini_open("check.ini");

	x = ini_read_string("player", "x", x);

	y = ini_read_string("player", "y", y);

	ini_close();
}




