if (global.timetravelspeed && !global.timetravel_started) {
	alarm[1] = 300
	alarm[2] = 180
} else if (!global.timetravelspeed && global.timetravel_started) {
	alarm[0] = global.timetravelspeed_delay;
    var timetravelpossible = false;
}
