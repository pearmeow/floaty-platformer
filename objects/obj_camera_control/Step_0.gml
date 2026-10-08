// center camera on player
// clamp x to the edges of the room and y to the height of the room
var x_pos = clamp(obj_player.x - cam_width / 2, 0, room_width - cam_width)
var y_pos = clamp(obj_player.y - cam_height / 2, 0, room_height - cam_height)
camera_set_view_pos(cam_id, x_pos, y_pos)