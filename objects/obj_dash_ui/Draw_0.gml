var prev_alpha = draw_get_alpha()
if (!j_pressed) {
	draw_set_alpha(0.5)
} else {
	draw_set_alpha(prev_alpha)
}
var prev_alignment = draw_get_halign()
draw_set_halign(fa_center)
draw_text(x, y - 50, "J to dash")
draw_set_halign(prev_alignment)
draw_set_alpha(prev_alpha)