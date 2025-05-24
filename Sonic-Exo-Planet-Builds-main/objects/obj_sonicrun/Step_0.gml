// Step Event
if (wait_timer > 0) {
    wait_timer--; // Reduce timer each frame
} else {
    moving = true; // Start moving after 3 seconds
}

if (moving) {
    x += 20; // Move object right
}