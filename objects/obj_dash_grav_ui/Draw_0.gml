var prev_alignment = draw_get_halign()
draw_set_halign(fa_center)
draw_text(x, y - 75, "Dashing horizontally temporarily ignores gravity")
draw_set_halign(prev_alignment)