if (keyboard_check(vk_up)) {
    global.framelvs -= 2;
}

if (keyboard_check(vk_down)) {
    global.framelvs += 2;
}

if (global.framelvs == -1) {
    global.framelvs = 3;
}

if (global.framelvs == -2) {
    global.framelvs = 2;
}

if (global.framelvs == 4) {
    global.framelvs = 0;
}

if (global.framelvs == 5) {
    global.framelvs = 1;
}

if (keyboard_check(vk_left)) {
    global.framelvs -= 1;
}

if (keyboard_check(vk_right)) {
    global.framelvs += 1;
}
if (keyboard_check(ord("Z"))) {
    if (global.framelvs == 0) {
		game_set_speed(60, gamespeed_fps); // Sets to 30 FPS
        room_goto(rm_stage_mmz1A);
    }
    else if (global.framelvs == 1) {
        room_goto(rm_stage_bcz1A);
		game_set_speed(60, gamespeed_fps); // Sets to 30 FPS
    }
    else if (global.framelvs == 2) {
        room_goto(rm_stage_level_select);
		game_set_speed(60, gamespeed_fps); // Sets to 30 FPS
    }
    else if (global.framelvs == 3) {
        room_goto(rm_stage_chl_1);
		game_set_speed(60, gamespeed_fps); // Sets to 30 FPS
    }
}
