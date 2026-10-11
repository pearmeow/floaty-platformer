time++

if (x_vel == 0) {
	x_direction *= -1
}

if (sign(x_vel) != sign(x_direction)) {
	x_vel = x_direction * max_x_vel
}

move_collide()