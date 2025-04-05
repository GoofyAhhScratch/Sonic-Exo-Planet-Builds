// Step Event
if (place_meeting(x, y,obj_player)) { 
	global.activated=true
	instance_create(global.teleportx,global.teleporty,obj_player)
    // If collision occurs
    if (!collision_detected) {
        collision_detected = true;
        collision_timer = 60 * 2; // 2 seconds, based on room speed
		global.activated = false
    }
} else {
    collision_detected = false; // No collision
    image_index = 0; // Stay on frame 0
}

// If collision detected, handle animation and timer
if (collision_detected) {
    collision_timer--; // Decrease timer
    image_index = (floor(current_time / 60) % 2) + 1; // Alternate between frame 1 and 2
}
if (collision_timer <= 0 && collision_detected)
x =x