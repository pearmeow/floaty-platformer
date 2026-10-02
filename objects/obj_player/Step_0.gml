var h_move = keyboard_check(ord("D")) -  keyboard_check(ord("A"))
var v_move = keyboard_check(ord("S")) -  keyboard_check(ord("W"))
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
	dash = true
	coyote_frames = 0
} else if (!grounded and coyote_frames <= max_coyote_frames) {
	grounded = true
	coyote_frames++
}

if (dash_timer == dash_duration) {
	dashing = false
	dash_timer = 0
}

if (dashing) {
	dash_timer += 1
} else {
	x_vel = clamp(x_vel + h_move * x_accel, -max_x_vel, max_x_vel)
	y_vel += grav
}

if (grounded and (keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_space))) {
	y_vel = -jump_strength
	create_particle(x, y + 8, 5)
}

if (dash and (keyboard_check_pressed(ord("J")))) {
	// normalize speed
	var directions = abs(h_move) + abs(v_move)
	if (directions == 2) {
		x_vel = h_move * normalized_dash_strength
		y_vel = v_move * normalized_dash_strength
		dash = false
		dashing = true
	} else if (directions == 1) {
		if (abs(h_move) == 1) {
			x_vel = h_move * dash_strength
			y_vel = 0
		} else {
			y_vel = v_move * dash_strength
			x_vel = 0
		}
		dash = false
		dashing = true
	}
}

if (h_move == 0) {
	x_vel = approach(x_vel, 0, x_decel)
}

move_collide()