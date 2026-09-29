var h_move = keyboard_check(ord("D")) -  keyboard_check(ord("A"))
var grounded = place_meeting(x, y + 1, obj_wall)

x_vel = clamp(x_vel + h_move * x_accel, -max_x_vel, max_x_vel)
y_vel += grav

if (grounded and (keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_space))) {
	y_vel = -jump_strength
}

if (h_move == 0) {
	x_vel = approach(x_vel, 0, x_decel)
}

move_collide()