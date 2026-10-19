function move_collide(){
	var x_total = x_vel + x_remain
	var y_total = y_vel + y_remain
	
	var x_round = floor(abs(x_total)) * sign(x_total)
	var y_round = floor(abs(y_total)) * sign(y_total)
	
	x_remain = x_total % 1
	y_remain = y_total % 1
	
	for (var _x = 0; _x < abs(x_round); _x++) {
		if (place_meeting(x + sign(x_vel), y, obj_bouncer)) {
			var collided = instance_place(x + sign(x_vel), y, obj_bouncer)  // don't get a random bouncer's y or x
			var bounce_direction = sign(x - collided.x)
			x_vel = abs(x_vel) * bounce_direction
			dash = true
		} else if (place_meeting(x + sign(x_vel), y, obj_wall)) {
			x_vel = 0
		} else {
			x += sign(x_vel)
		}
	}

	for (var _y = 0; _y < abs(y_round); _y++) {
		// special platform case
		if (place_meeting(x, y + 1, obj_platform) && not place_meeting(x, y + 1, obj_wall)) { // do not fall down into a wall
			 // going up or already inside or falling
			if (sign(y_vel) < 0 or place_meeting(x, y, obj_platform) or keyboard_check(ord("S"))) {
				y += sign(y_vel)
			} else {
				y_vel = 0
			}
		} else if (place_meeting(x, y + sign(y_vel), obj_bouncer)) { // guess we're gonna see a lot more of these
			var collided = instance_place(x, y + sign(y_vel), obj_bouncer)  // don't get a random bouncer's y or x
			var bounce_direction = sign(y - collided.y)
			dash = true
			y_vel = abs(y_vel) * bounce_direction
			if (abs(y_vel) < 1 and sign(y_vel) == -1) { // don't bounce tiny amounts on the ground
				y_vel = 0
			}
		} else if (place_meeting(x, y + sign(y_vel), obj_wall)) {
			y_vel = 0
		} else {
			y += sign(y_vel)
		}
	}
}