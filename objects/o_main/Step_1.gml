/// @description Restart
var r, g
r = keyboard_check_pressed(ord("R"));
g = keyboard_check_pressed(ord("G"));

if (r) {room_restart();}
if (g) {game_restart();}