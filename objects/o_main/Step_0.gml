//Close if you don't let the window in focus and pres shift the game close
//if (!window_has_focus()) {game_end();}

//Load if teh fps is low
if (fps <= 10) 
{
	time = 0;
	instance_deactivate_all(o_main);
	t = true;
}
else if (fps > 10)	//if is good set a timer to come back to the app
{
	time--;
	if (time <= 0) 
	{
		instance_activate_all();
		time = 100;
	}
}

if (time <= 3)
{
	alarm[0] = 10;
}