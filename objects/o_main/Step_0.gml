if (fps <= 10) 
{
	instance_deactivate_all(o_main);
	t = true;
}
else if (fps > 10)
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