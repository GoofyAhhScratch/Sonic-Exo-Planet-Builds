// Define suffixes based on animation frame (0 to 3)
var frame_suffixes = ["B", "A", "C", "D"]; 

// Ensure frame index is within bounds
global.frametimepost = clamp(global.frametimepost, 0, array_length(frame_suffixes) - 1);

// Handle UP/DOWN for selecting levels
if (keyboard_check_pressed(vk_up)) {
    global.levelIndex -= 1;
    audio_play_sound(sfx_beep, 1, false);
}
if (keyboard_check_pressed(vk_down)) {
    global.levelIndex += 1;
    audio_play_sound(sfx_beep, 1, false);
}

// Keep level index within bounds
global.levelIndex = clamp(global.levelIndex, 0, array_length(global.levelList) - 1);

// Handle LEFT/RIGHT for selecting animation frames
if (keyboard_check_pressed(vk_right)) {
    global.frametimepost += 1;
    audio_play_sound(sfx_beep, 1, false);
}
if (keyboard_check_pressed(vk_left)) {
    global.frametimepost -= 1;
    audio_play_sound(sfx_beep, 1, false);
}

// Keep frame index within bounds
global.frametimepost = clamp(global.frametimepost, 0, array_length(frame_suffixes) - 1);

// Get suffix based on the frame
var selected_suffix = frame_suffixes[global.frametimepost];

// Get room code based on the selected level variable
var room_code = "rm_stage_" + global.levelList[global.levelIndex] + selected_suffix;

// Debugging output
show_debug_message("Generated Room Name: " + room_code);

// Enter level when ENTER is pressed
if (keyboard_check_pressed(vk_enter)) {
    audio_play_sound(sfx_starpost, 1, false);
    
    // Debugging output
    show_debug_message("Trying to enter: " + room_code);

    // Find the correct room ID by matching the room name in global.roomTT
    var room_found = false;
    for (var i = 0; i < array_length(global.roomTT); i++) {
        if (global.roomTT[i][0] == room_code) { // Match the generated room name
            global.GoToRoom = global.roomTT[i][1]; // Assign the corresponding room ID
            show_debug_message("Match Found! Transitioning to Room ID: " + string(global.GoToRoom));
            room_found = true;
            break;
        }
    }

    // Check if a matching room was found before transitioning
    if (room_found) {
        room_goto(global.GoToRoom); // Enter the correct room
    } else {
        show_debug_message("ERROR: Room name not found in global.roomTT!");
    }
}
