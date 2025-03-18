// State machine to handle different phases
switch (state) {
    case "moveTo96":
        // Increment elapsed time
        elapsedTime += 1;
        
        // Calculate the t value (ranging from 0 to 1)
        var t = elapsedTime / duration;
        // Map t to an angle from 0 to π/2
        var angle = lerp(0, pi / 2, t);
        // Calculate the smooth Y position using the sine function
        var smoothY = lerp(startY, endY, sin(angle));
        
        // Apply the new position
        y = smoothY;
        x = xPosition;
        
        // Check if the target position is reached
        if (elapsedTime >= duration) {
            elapsedTime = 0; // Reset elapsedTime
            state = "waitAt96"; // Move to the next state
        }
        break;

    case "waitAt96":
        // Increment elapsed time
        elapsedTime += 1;
        
        // Wait for the specified time
        if (elapsedTime >= waitTime) {
            elapsedTime = 0; // Reset elapsedTime
            state = "moveTo224"; // Move to the next state
        }
        break;

    case "moveTo224":
        // Calculate the t value (ranging from 0 to 1)
        t = elapsedTime / (duration/2);
        // Map t to an angle from 0 to π/2
        angle = lerp(0, pi / 2, t);
        // Calculate the smooth Y position using the sine function
        smoothY = lerp(endY, 224, sin(angle));
        
        // Apply the new position
        y = smoothY;
        x = xPosition;
        
        // Increment elapsed time
        elapsedTime += 1;
		
		if (elapsedTime = duration-20) {
           fade_perform_white(FADEROUTINE.OUT, 2, false);
        }
		
		if (elapsedTime >= duration) {
            elapsedTime = 0; // Reset elapsedTime
            state = "travel"; // Move to the next state
        }

        break;
		
	case "travel":
		room_goto(global.GoToRoom);
		state = "waitAt96";
		elapsedTime = 0;
		break;
}

global.ttsparkTimer += 1;
if global.ttsparkTimer > 12 {
	instance_create(x, y-48, obj_timetravelsparksDown);
	global.ttsparkTimer = 0;
}