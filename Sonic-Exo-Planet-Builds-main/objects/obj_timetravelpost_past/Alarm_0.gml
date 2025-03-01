if (global.timetravelspeed = true) {
    instance_create(obj_player.x, obj_player.y, obj_timetravelsparks);
    alarm[0] = global.timetravelspeed_delay;
} else if (global.timetravelspeed=false) {
    // Clean up or reset if needed
    global.timetravel_started = false;
}

if (animation_active) {
    animation_frame++;
    
    if (animation_frame > 4) {
        animation_frame = 1;
        animation_cycle++;
    }
    
    if (animation_cycle >= animation_repeats) {
        animation_active = false;
        image_index = 5; // Rest at frame 5
    } else {
        image_index = animation_frame;
        alarm[0] = 5; // Set the alarm for the next frame (adjust as needed for speed)
    }
}

if (global.timetravelspeed=true) {
    if (instance_exists(obj_player)) {
        var new_spark = instance_create_layer(obj_player.x, obj_player.y, layer, obj_timetravelsparks);
    }
    alarm[0] = global.timetravelspeed_delay; // Reset the alarm for the next spawn
}
