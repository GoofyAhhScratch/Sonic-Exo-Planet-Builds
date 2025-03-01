if (!global.timetravel_sound_played) {
    global.timetravel_sound_played = true;
    audio_play_sound(sfx_past, 10, false);
}
if (!animation_active) {
    animation_active = true;
    animation_cycle = 0;
    animation_frame = 1; // Start at frame 1
    image_index = animation_frame;
    alarm[0] = 5; // Set the alarm for the next frame (adjust as needed for speed)
}
if (!global.timetravel_started=true) {
    global.timetravelspeed = true; // Set timetravel speed to true on collision
    global.timetravel_started = true;
    alarm[0] = global.timetravelspeed_delay; // Start the alarm
}
