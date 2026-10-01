if (lifetime > max_lifetime) {
	instance_destroy()
}

x += x_vel
y += y_vel

image_alpha = (max_lifetime - lifetime) / max_lifetime

lifetime++