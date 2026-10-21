// center camera on player
// clamp x to the edges of the room and y to the height of the room
if (looking_up) {
	camera_change = approach(camera_change, -cam_height, 20)
}

if (looking_down) {
	camera_change = approach(camera_change, cam_height, 20)
}

var y_upper_clamp = 0
if (room == rm_0) {
	if (obj_player.y > 1504 and obj_player.x < 7881) {
		y_upper_clamp = 1504
	}
}

var x_pos = clamp(obj_player.x - cam_width / 2, 0, room_width - cam_width)
var y_pos = clamp(camera_change + obj_player.y - cam_height / 2, y_upper_clamp, room_height - cam_height)


if (keyboard_check(ord("W")) and obj_player.get_vel() < 1) {
	if (up_timer >= up_duration) {
		looking_up = true
	} else {
		up_timer++
	}
} else if (keyboard_check(ord("S")) and obj_player.get_vel() < 1) {
	if (down_timer >= down_duration) {
		looking_down = true
	} else {
		down_timer++
	}
} else {
	looking_up = false
	looking_down = false
	up_timer = 0
	down_timer = 0
	camera_change = approach(camera_change, 0, 20)
}

camera_set_view_pos(cam_id, x_pos, y_pos)