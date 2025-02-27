/// @description General

if (keyboard_check_pressed(ord("R"))) room_restart();
if (keyboard_check_pressed(vk_escape)) game_end();


if (keyboard_check_pressed(ord("1"))) global.gameSpeed = 0.6;
if (keyboard_check_pressed(ord("2"))) global.gameSpeed = 0.7;
if (keyboard_check_pressed(ord("3"))) global.gameSpeed = 0.8;
if (keyboard_check_pressed(ord("4"))) global.gameSpeed = 0.9;
if (keyboard_check_pressed(ord("5"))) global.gameSpeed = 1.0;
if (keyboard_check_pressed(ord("6"))) global.gameSpeed = 1.1;
if (keyboard_check_pressed(ord("7"))) global.gameSpeed = 1.2;
if (keyboard_check_pressed(ord("8"))) global.gameSpeed = 1.3;
if (keyboard_check_pressed(ord("9"))) global.gameSpeed = 1.4;
if (keyboard_check_pressed(ord("0"))) global.gameSpeed = 1.5;

layer_vspeed(layerRacetrack, global.gameSpeed);
show_debug_message(global.gameSpeed);
