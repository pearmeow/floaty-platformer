if (keyboard_check_pressed(vk_right) and room_exists(room_next(room))) {
	room_goto_next()
	if (room_next(room) == rm_1) {
		global.can_dash = true
	}
}

if (keyboard_check_pressed(vk_left) and room_exists(room_previous(room))) {
	room_goto_previous()
	if (room_previous(room) != rm_1) {
		global.can_dash = false
	} else if (room_previous(room) == rm_0) {
		global.timer = 0
		global.deaths = 0
	}
}

global.timer += 1 / 60