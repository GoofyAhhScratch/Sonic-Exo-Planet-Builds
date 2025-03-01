if (global.timetravelspeed && !global.timetravel_started) {
    global.timetravel_started = true;
	alarm[1] = 300
} else if (!global.timetravelspeed && global.timetravel_started) {
    global.timetravelspeed = false;
    global.timetravel_started = false;
	alarm[0] = global.timetravelspeed_delay;
    var timetravelpossible = false;
}
