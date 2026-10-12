x = obj_player.x 
y = obj_player.y

if (keyboard_check(ord("S")) and obj_player.get_vel() < 1) {
	if (down_timer >= down_duration) {
		s_held = true
		looking_down = true
	} else {
		down_timer++
	}
} else {
	looking_down = false
	down_timer = 0
}

if (s_held) {
	instance_destroy() // you are useless now
}