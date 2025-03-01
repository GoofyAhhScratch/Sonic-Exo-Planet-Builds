// Allow only one instance of this object at a time
if instance_number(object_index) > 1
{
	instance_destroy();
	exit;
}

// Create event or global initialization
// Create event or global initialization
global.timepost = 0; // Initialize global.timepost to a default value
global.timetravelspeed = false; // Initialize global.timetravelspeed to a default value
global.timetraveleffectsshown = false; // Initialize global.timetraveleffectsshown to a default value
global.timetravel_started = false
global.timetravelaction = false
timer_string = "";
dynamic_frame = 0;
score_offset = 0;
time_offset  = 0;
rings_offset = 0;
lives_offset = 0;
local_timer = 0;
update_timer = true;
// Create event for obj_example
animation_frame = 0; // Start at frame 0
alarm[0] = 30; // Set the alarm for frame switching (adjust as needed for speed)

