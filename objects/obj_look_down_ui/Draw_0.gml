var prev_alignment = draw_get_halign()
draw_set_halign(fa_center)
draw_text(x, y - 50, "Hold S to look down (while not on a platform)")
draw_set_halign(prev_alignment)