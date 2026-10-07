grav = 0.15
x_vel = 0
y_vel = 0
max_x_vel = 5
x_accel = 0.5
x_decel = 0.5

x_remain = 0
y_remain = 0

jump_strength = 8

max_coyote_frames = 7
coyote_frames = 0
 
prev_positions = []
afterimage_speed = 9

dash = true
dashing = false
dash_duration = 15
dash_timer = 0
dash_strength = 10
normalized_dash_strength = sqrt(dash_strength * dash_strength / 2)

color = c_white

can_dash = false

x = obj_spawn.x
y = obj_spawn.y

function get_vel() {
	return sqrt(x_vel * x_vel + y_vel * y_vel)
}

function die() {
	x = obj_spawn.x
	y = obj_spawn.y
	x_vel = 0
	y_vel = 0
	audio_play_sound(sfx_death, 0, false)
}