x = obj_player.x 
y = obj_player.y

if (keyboard_check(ord("W")) and obj_player.get_vel() < 1) {
	if (up_timer >= up_duration) {
		w_held = true
		looking_up = true
	} else {
		up_timer++
	}
} else {
	looking_up = false
	up_timer = 0
}

if (w_held) {
	instance_destroy() // you are useless now
}