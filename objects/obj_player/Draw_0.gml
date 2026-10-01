for (var i = 0; i < array_length(prev_positions); i++) {
	// draw an afterimage that seems like it's fading
	// might need to store image index at position as well
	var prev_x = prev_positions[i][0]
	var prev_y = prev_positions[i][1]
	var alpha = 0.9 * (array_length(prev_positions) - i) / array_length(prev_positions)
	draw_sprite_ext(spr_player, 0, prev_x, prev_y, 1, 1, 0, c_white, alpha)
}


draw_self()