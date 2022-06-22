/// @description Restart
var r, g
r = keyboard_check_direct(ord("R")) && keyboard_check_direct(vk_control);
g = keyboard_check_direct(ord("G")) && keyboard_check_direct(vk_control);

if (r) {room_restart();}
if (g) {game_restart();}