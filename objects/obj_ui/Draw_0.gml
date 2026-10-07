var prev_alpha = draw_get_alpha()
if (!w_pressed) {
	draw_set_alpha(0.5)
} else {
	draw_set_alpha(prev_alpha)
}
draw_text(x, y - 55, "W")
if (!space_pressed) {
	draw_set_alpha(0.5)
} else {
	draw_set_alpha(prev_alpha)
}
draw_text(x + 35, y - 55, "Space to Jump")

if (!a_pressed) {
	draw_set_alpha(0.5)
} else {
	draw_set_alpha(prev_alpha)
}
draw_text(x - 10, y - 40, "A")
if (!s_pressed) {
	draw_set_alpha(0.5)
} else {
	draw_set_alpha(prev_alpha)
}
draw_text(x, y - 40, "S")
if (!d_pressed) {
	draw_set_alpha(0.5)
} else {
	draw_set_alpha(prev_alpha)
}
draw_text(x + 10, y - 40, "D")
//if (!j_pressed) {
//	draw_set_alpha(0.5)
//} else {
//	draw_set_alpha(prev_alpha)
//}
//draw_text(x + 40, y - 40, "J to dash")
draw_set_alpha(prev_alpha)