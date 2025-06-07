// --- Define suffix frames based on their order in spr_time_select ---
// Frame order is: 0 → "B", 1 → "A", 2 → "C", 3 → "D"
var frame_suffixes = ["B", "A", "C", "D"];

// Clamp indexes to valid ranges.
global.levellistanimation = clamp(global.levellistanimation, 0, array_length(global.levelList) - 1);
global.frametimepost    = clamp(global.frametimepost, 0, array_length(frame_suffixes) - 1);

// --- Handle input to adjust level selection and suffix ---
var _input_press = input_get_pressed(0);  // your custom input check function

// UP/DOWN: Change level index.
if (_input_press.down) {
    global.levellistanimation = min(global.levellistanimation + 1, array_length(global.levelList) - 1);
    global.levelIndex = global.levellistanimation;
    audio_play_sound(sfx_beep, 1, false);
}
if (_input_press.up) {
    global.levellistanimation = max(global.levellistanimation - 1, 0);
    global.levelIndex = global.levellistanimation;
    audio_play_sound(sfx_beep, 1, false);
}

// LEFT/RIGHT: Change suffix frame.
if (_input_press.right) {
    global.frametimepost = min(global.frametimepost + 1, array_length(frame_suffixes) - 1);
    audio_play_sound(sfx_beep, 1, false);
}
if (_input_press.left) {
    global.frametimepost = max(global.frametimepost - 1, 0);
    audio_play_sound(sfx_beep, 1, false);
}

// --- Construct the room name based on the selection ---
var selected_level = global.levelList[global.levellistanimation]; // e.g., "mmz1" or "ccz2"
var selected_suffix = frame_suffixes[global.frametimepost];         // e.g., "B", "A", etc.
var room_name = "rm_stage_" + selected_level + selected_suffix;       // e.g., "rm_stage_mmz1B"

// --- Look up the room ID in global.roomTT ---
global.GoToRoom = noone;
for (var i = 0; i < array_length(global.roomTT); i++) {
    if (global.roomTT[i][0] == room_name) {
        global.GoToRoom = global.roomTT[i][1];
        break;
    }
}

// --- On confirmation input, transition to the selected room, or play fail sound ---
if (_input_press.action1 || _input_press.start) {
    if (global.GoToRoom != noone) {
        audio_play_sound(sfx_starpost, 1, false);
        room_goto(global.GoToRoom);
    } else {
        audio_play_sound(sfx_fail, 1, false);
    }
}