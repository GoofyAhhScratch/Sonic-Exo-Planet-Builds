// Inherit the parent event
event_inherited();

// Set object properties
obj_set_hitbox(80, 64);
obj_set_priority(5);
obj_set_culling(CULLING.RESPAWN);

// Initialize animation variables
frame_speed = 0.2; // Adjust this value for animation speed
frame_index = 0;

// Store original vertical position and initialize motion variables
original_y = y; // Store the original vertical position
time_tracker = 0; // Initialize the time tracker
frequency = 0.5; // Set the frequency of the bobbing motion
amplitude = 0.5; // Set the amplitude of the bobbing motion
