// Step Event
if (place_meeting(x, y, obj_sonicrun)) { // Replace obj_sonicrun with the actual object name
    animation_started = true;
   alarm[0] = 15
}

if (animation_started && image_index < 4) { 
    image_speed = 1; // Start animation
} else if (image_index >= 4) {
    image_speed = 0; // Stop animation at frame 4
    image_index = 4; // Ensure it stays at frame 4
}