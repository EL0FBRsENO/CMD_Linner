draw_set_font(fn_roboto);

//draw the logs
for (var i = 0; i < array_length(console_logs); i++)
{
	draw_set_halign(fa_right);
	draw_set_alpha(.75);
	draw_text(32, string_height("Í") * i, string(i+1) + "|");
	draw_set_alpha(1);
	draw_set_halign(-1);
	draw_text(32, string_height("Í") * i, console_logs[i]);
}
//draw what youre digitting
draw_text(32, room_height-string_height("Í")*4, string(log) + string(s));

//Show what will be the output
if (output != "")
{
	draw_set_halign(fa_right);
	draw_text(room_width-string_width("Ì"), room_height-string_height("Í")*4, 
		"Output: " + string(output));
	draw_set_halign(-1);
}