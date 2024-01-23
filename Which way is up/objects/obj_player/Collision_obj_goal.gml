//sets didWin to true
global.didWin = true;

//sets timer to move on to next level
if(alarm[2] < 0)
{
alarm[2] = 60;
}

//deletes checkpoint if player won level
var l305F90B5_0 = file_exists("check.ini");
if(l305F90B5_0)
{
	file_delete("check.ini");
}


