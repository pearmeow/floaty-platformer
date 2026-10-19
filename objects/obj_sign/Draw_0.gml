draw_self()
var align = draw_get_halign()
draw_set_halign(fa_center)
if (display_text) {
	draw_text(x, y - 50, text)
}
draw_set_halign(align)