//set the main font
draw_set_font(fn_roboto);

//draw the column background
draw_set_color(#363b4a);
draw_rectangle(0, 0, 36, room_height, false);
draw_set_color(-1);
draw_set_color(#202430);
draw_rectangle(0, 0, 32, room_height, false);
draw_set_color(-1);

//draw the logs
for (var i = 0; i < array_length(console_logs); i++)
{
	//draw the line number
	draw_set_halign(fa_right);
	draw_set_alpha(.75);
	draw_text(32, string_height("Í") * i, string(i+1) + "|");
	draw_set_alpha(1);
	draw_set_halign(-1);
	//draw the console log
	draw_text(40, string_height("Í") * i, console_logs[i]);
}
//draw the text background
draw_set_color(#363b4a);
draw_rectangle(0, room_height-string_height("Í")*4-8, room_width, room_height, false);
draw_set_color(-1);
draw_set_color(#202430);
draw_rectangle(0, room_height-(string_height("Í")*4)-4, room_width, room_height, false);
draw_set_color(-1);

//draw what you're typing
draw_set_alpha(.75);
draw_text_transformed(3, room_height-string_height("Í")*4+2, "Text| ", .75, .75, 0);
draw_set_alpha(1);
draw_text(40, room_height-string_height("Í")*4, string(log) + string(s));

//Show the output
if (output != "")
{
	draw_set_halign(fa_right);
	draw_text(room_width-string_width("Ì"), room_height-string_height("Í")*4, 
		"Output: " + string(output));
	draw_set_halign(-1);
}