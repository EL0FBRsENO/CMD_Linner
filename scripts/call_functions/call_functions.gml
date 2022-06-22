// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function call_functions(){
	//print
	function print()
	{
		//What the function will do before pressing enter
		var _func = function()
		{
			//this get the text after the "print" function
			if (string_length(log) > 6)
			{
				if (log == "print " + string_copy(log, 7, string_length(log)))
				{
					//7 is for get the text after the function
					func = string_copy(log, 7, string_length(log));
					//Show what this function will do
					output = func;
				}
				else {output = "";}		//put the output back to normal
			}
		}
		//What the function will do after pressing enter
		var _do = function() 
		{
			//Verify if what you're typing is print (anything you want)
			if (log == "print " + string(func))
			{
				array_insert(console_logs, array_length(console_logs), func);
			}
		}
	
		//Make all the things work
		_func();
		if (enter) {_do();}
	}
	
	function test()
	{
		var _func = function()
		{
			if (!file_exists("saves.ini"))
			keyboard_string = "file 'saves.ini' dont exist";
		}
		var _do = function()
		{
			//Verify if what you're typing is test
			if (log == "test")
			{
				//log the test
				ini_open(program_directory + "saves.ini");
					if (ini_section_exists("output")) 
					{
						array_insert(console_logs, array_length(console_logs), 
							"This is a test for the save and load functions!");
					}
				ini_close();
				
			}
		}
		//Make all the things work
		_func()
		if (enter) {_do();}
		return _func
	}

	//Call the functions
	print();
	test();
	
}	//func end