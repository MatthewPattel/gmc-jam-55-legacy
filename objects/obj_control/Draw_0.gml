/// @description Draw screen

draw_set_color(c_black);
draw_sprite(spr_screen, 0, x, y);
for (var _y = 0 ; _y < sprite_height ; _y++) {
	if (irandom(99) < 4 ) continue;
	draw_line(x, y+_y, x+sprite_width, y+_y);
}
draw_set_color(c_white);
