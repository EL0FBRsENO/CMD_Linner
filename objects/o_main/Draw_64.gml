if (fps <= 10)
{
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(fn_roboto_big);
	draw_text_transformed(room_width/2, room_height/2, "Loading...", 2, 2, -3);
	draw_set_halign(-1);
	draw_set_valign(-1);
	draw_set_font(-1);
}
else if (fps > 10 && t)
{
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(fn_roboto_big);
	draw_text_transformed(room_width/2, room_height/2, "Loading little more...", 2, 2, 0);
	draw_set_halign(-1);
	draw_set_valign(-1);
	draw_set_font(-1);
}