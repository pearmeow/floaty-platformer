function move_collide(){
	var x_total = x_vel + x_remain
	var y_total = y_vel + y_remain
	
	var x_round = floor(abs(x_total)) * sign(x_total)
	var y_round = floor(abs(y_total)) * sign(y_total)
	
	x_remain = x_total % 1
	y_remain = y_total % 1
	
	for (var _x = 0; _x < abs(x_round); _x++) {
		if (place_meeting(x + sign(x_vel), y, obj_wall)) {
			x_vel = 0
		} else {
			x += sign(x_vel)
		}
	}

	for (var _y = 0; _y < abs(y_round); _y++) {
		if (place_meeting(x, y + sign(y_vel), obj_wall)) {
			y_vel = 0
		} else {
			y += sign(y_vel)
		}
	}
}