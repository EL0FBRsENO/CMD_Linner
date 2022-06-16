enter = keyboard_check_pressed(vk_enter);

if (keyboard_check(vk_anykey)) {s = "*";}

if (enter && string_char_at(log, string_length(log)) != " " && string_char_at(log, 
	string_length(log)) != "")
{
	//string_insert("\n", keyboard_string, string_length(keyboard_string));
	var i = array_length(console_logs)+1;
	i--;
	array_insert(console_logs, i, log);
	keyboard_string = "";
}

if (string_length(log) == string_length(output)*string_length(log)) {keyboard_string += "\n";}
if (keyboard_check_pressed(vk_f3)) {output += "A";}
if (keyboard_check_pressed(vk_f4)) {output = "1";}

#region FUNCTIONS
//PRINT FUNCTION
var print = function() 
{
	var _func, _do
	_func = function() 
	{
		//this get the text after the "print" function
		//7 is for get the text after the function
		if (string_byte_at(log, 7)) {FUNC = string_copy(keyboard_string, 7, 
			string_length(keyboard_string));}
	}
	_do = function() 
	{
		if (enter) {array_insert(console_logs, array_length(console_logs), FUNC);}
	}
	create_command("print", _func(), _do());
}

//Call the functions
print();
#endregion