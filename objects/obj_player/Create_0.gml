grav = 0.15
x_vel = 0
y_vel = 0
max_x_vel = 5
x_accel = 0.5
x_decel = 0.5

x_remain = 0
y_remain = 0

jump_strength = 8

max_coyote_frames = 10
coyote_frames = 0
 
prev_positions = []
afterimage_speed = 7

function get_vel() {
	return sqrt(x_vel * x_vel + y_vel * y_vel)
}