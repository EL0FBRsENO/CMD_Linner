// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_command(func_name, _func, _do){
	if (log == func_name + " " + string(_func))
	{
		_do();
	}
}	//func end