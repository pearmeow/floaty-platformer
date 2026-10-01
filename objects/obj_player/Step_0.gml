var h_move = keyboard_check(ord("D")) -  keyboard_check(ord("A"))
var grounded = place_meeting(x, y + 1, obj_wall)

// only add afterimages after a certain speed
if (get_vel() > afterimage_speed) {
	array_insert(prev_positions, 0, [x,y])
} else {
	// remove afterimages
	array_insert(prev_positions, 0, [x,y])
	array_pop(prev_positions)
	array_pop(prev_positions)
}
// max afterimages == 8
if (array_length(prev_positions) == 9) {
	array_pop(prev_positions)
}

if (grounded) {
	coyote_frames = 0
} else if (!grounded and coyote_frames <= max_coyote_frames) {
	grounded = true
	coyote_frames++
}

x_vel = clamp(x_vel + h_move * x_accel, -max_x_vel, max_x_vel)
y_vel += grav

if (grounded and (keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_space))) {
	y_vel = -jump_strength
	create_particle(x, y + 8, 5)
}

if (h_move == 0) {
	x_vel = approach(x_vel, 0, x_decel)
}

move_collide()