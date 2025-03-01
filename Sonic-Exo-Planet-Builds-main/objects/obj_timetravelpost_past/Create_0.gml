var timetravelpossible = false
global.timetravelspeed = false;
global.timetravel_started = false;
global.timetravelspeed_delay = 15; // Number of frames (30 for half a second at 60 FPS
global.timetraveleffectshown = false
global.timepost = 1
global.stopanimationtimetravel = false
animation_frame = 1

alarm[0] = global.timetravelspeed_delay;
global.timetravel_sound_played = false;
animation_active = false;
animation_cycle = 0;
animation_frame = 0;
animation_repeats = 3; // Number of times to repeat frames 1-4