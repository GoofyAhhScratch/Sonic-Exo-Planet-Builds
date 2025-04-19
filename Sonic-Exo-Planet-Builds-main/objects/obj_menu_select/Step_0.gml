// Get user input
var _input_up = keyboard_check_pressed(vk_up);      // Detect "up" arrow key
var _input_down = keyboard_check_pressed(vk_down);  // Detect "down" arrow key
var _input_enter = keyboard_check_pressed(vk_enter); // Detect "enter" key

// Navigation logic
var _previous_option = option_id;

if (_input_down && option_id < 2) {
    option_id++; // Move to the next menu option
}
else if (_input_up && option_id > 0) {
    option_id--; // Move to the previous menu option
}

// If the option changes, play a sound
if (_previous_option != option_id) {
    audio_play_sfx(sfx_beep);
}

// Enter key action
if (_input_enter) {
    audio_play_sfx(sfx_starpost);

    // Perform actions based on the selected option
    switch (option_id) {
        case 0:
            fade_perform_black(FADEROUTINE.OUT, 1);
            room_goto(rm_devmenu); // Replace with the desired room
            break;
        case 1:
            fade_perform_black(FADEROUTINE.OUT, 1);
            room_goto(rm_devmenu); // Replace with the desired room
            break;
        case 2:
            fade_perform_black(FADEROUTINE.OUT, 1);
            room_goto(rm_devmenu); // Replace with the desired room
            break;
    }
}
