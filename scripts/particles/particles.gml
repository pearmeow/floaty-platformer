function create_particle(_x, _y, _count, _particle = obj_particle) {
	for (var i = 0; i< _count; i++) {
		instance_create_depth(_x, _y, 0, _particle)
	}
}