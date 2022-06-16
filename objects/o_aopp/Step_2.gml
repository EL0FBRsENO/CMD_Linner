/// @description keyboard sound effect
if (log != keyboard_string) 
{
	audio_play_sound(sd_key_press, 1, false);
	log = keyboard_string;
}
else if (!keyboard_check(vk_anykey) && keyboard_check_released(vk_anykey))
{
	audio_play_sound(sd_key_releas, 2, false);
}