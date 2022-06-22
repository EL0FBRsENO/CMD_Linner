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

#region SHORTCUTS
//Delete all
if (keyboard_check_direct(vk_control) && keyboard_check_direct(vk_backspace))
{
	keyboard_string = "";
}

//Save all the funtions
//If pressed CTRL+S
if (keyboard_check_direct(vk_control) && keyboard_check_direct(ord("S")))
{
	if (file_exists("saves.ini")) {file_delete("saves.ini")}
	ini_open(program_directory + "saves.ini");
		ini_write_real("function 'test'", "output", test());
	ini_close();
}

//Load function
	//If pressed CTRL+L
	//if (keyboard_check_direct(vk_control) && keyboard_check_direct(ord("L")))
	//{
if (file_exists("saves.ini")) 
{
	ini_open(program_directory + "saves.ini");
		ini_read_real("function 'test'", "output", "dont have an output");
	ini_close();
}
else{output = "file " + "saves.ini" + " don't exists"}
	//}
#endregion

//FUNCTIONS
call_functions();

//if (output != func) {output = program_directory;}