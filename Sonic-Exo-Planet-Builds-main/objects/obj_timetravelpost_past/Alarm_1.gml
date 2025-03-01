if (global.timetravel_started == true) {
    global.timetravelaction = true;

    if (global.zone == 1 && global.level == 1) {
        if (global.timezone == 1) {
            room_goto(rm_stage_mmz1B);
        } else {
            global.timezone = 3;
            room_goto(rm_stage_mmz1A);
        }
    }
}
