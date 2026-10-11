if (place_meeting(x, y, obj_player)) {
	global.can_dash = true
	instance_create_depth(obj_player.x, obj_player.y, 0, obj_dash_ui)
	instance_destroy()
}

y += dsin(timer) / 4

timer++

if (timer == 360) {
	timer = 1
}