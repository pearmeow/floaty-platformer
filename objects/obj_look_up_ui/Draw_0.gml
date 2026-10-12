var prev_alignment = draw_get_halign()
draw_set_halign(fa_center)
draw_text(x, y - 50, "Hold W to look up")
draw_set_halign(prev_alignment)