if (active) {
	draw_self()
} else {
	draw_sprite_ext(spr_dash_refresh, 0, x, y, 1, 1, 0, c_white, 0.2)
}