x = obj_player.x 
y = obj_player.y

if (keyboard_check_pressed(ord("W"))) {
	w_pressed = true
}
if (keyboard_check_pressed(ord("A"))) {
	a_pressed = true
}
if (keyboard_check_pressed(ord("S"))) {
	s_pressed = true
}
if (keyboard_check_pressed(ord("D"))) {
	d_pressed = true
}
if (keyboard_check_pressed(ord("J"))) {
	j_pressed = true
}
if (keyboard_check_pressed(vk_space)) {
	space_pressed = true
}

if (w_pressed && a_pressed && s_pressed && d_pressed && j_pressed && space_pressed) {
	instance_destroy() // you are useless now
}