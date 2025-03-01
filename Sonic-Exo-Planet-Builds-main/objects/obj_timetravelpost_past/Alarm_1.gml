if (global.timetravel_started == true && global.timetravelspeed == true) {
    global.timetravelaction = true;
global.obj_player_x = obj_player.x;
global.obj_player_y = obj_player.y
    if (global.zone == 1 && global.level == 1) {
        if (global.timezone == 1) {
            room_goto(rm_stage_mmz1B);
        } else {
            global.timezone = 3;
            room_goto(rm_stage_mmz1A);
        }
    }

    if (global.zone == 3 && global.level == 1) {
        if (global.timezone == 1) {
            room_goto(rm_stage_bcz1B);
        } else {
            global.timezone = 3;
            room_goto(rm_stage_bcz1B);
        }
    }
}
