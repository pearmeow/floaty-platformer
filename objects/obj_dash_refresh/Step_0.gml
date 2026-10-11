if (not active) {
	if (reactivate_timer >= reactivate_duration) {
		active = true
		reactivate_timer = 0
	}
	reactivate_timer++
	return
}

if (place_meeting(x, y, obj_player)) {
	active = false
	obj_player.dash = true
}

y += dsin(timer) / 9

timer++

if (timer == 360) {
	timer = 1
}