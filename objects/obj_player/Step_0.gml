var h_move = keyboard_check(ord("D")) -  keyboard_check(ord("A"))

x_vel = clamp(x_vel + h_move * x_accel, -x_spd, x_spd)
y_vel += grav

for (var _x = 0; _x < abs(x_vel); _x++) {
	if (place_meeting(x + sign(x_vel), y, obj_wall)) {
		x_vel = 0
	} else {
		x += sign(x_vel)
	}
}

for (var _y = 0; _y < abs(y_vel); _y++) {
	if (place_meeting(x, y + sign(y_vel), obj_wall)) {
		y_vel = 0
	} else {
		y += sign(y_vel)
	}
}

