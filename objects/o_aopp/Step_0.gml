enter = keyboard_check_pressed(vk_enter);

if (keyboard_check(vk_anykey)) {s = "*";}

//send the log to the console
if (enter && string_char_at(log, string_length(log)) != " " && string_char_at(log, 
	string_length(log)) != "")
	{
	var i = array_length(console_logs)+1;
	i--;
	array_insert(console_logs, i, log);
	keyboard_string = "";
}


//If the log is to big, go to a new line
if (string_length(log) == 120*t) 
{
	keyboard_string += "\n";
	t++;
}
if (keyboard_check_pressed(vk_f3)) {output += "A";}		//some test

#region FUNCTIONS
//PRINT FUNCTION
var print = function()
{
	//What the function will do before pressing enter
	var _func = function()
	{
		//this get the text after the "print" function
		if (string_length(log) > 6) 
		{
			//7 is for get the text after the function
			FUNC = string_copy(log, 7, string_length(log));
			//Show what this function will do
			output = FUNC;
		}
		else {output = "";}		//put the output back to normal
	}
	//What the function will do after pressing enter
	var _do = function() 
	{
		//Verify if what you're digitting is print (anything you want)
		if (log == "print " + string(FUNC))
		{
			array_insert(console_logs, array_length(console_logs), FUNC);
		}
	}
	
	//Make all the things work
	_func();
	if (enter) {_do();}
}

//Call the functions
print();
#endregion