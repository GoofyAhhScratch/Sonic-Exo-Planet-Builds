// Act as an enemy and exit if destroyed
if !obj_act_enemy_badnik_spawner()
{
    exit;
}

// Check for future state
if (global.isGoodFuture = false) // Correct comparison operator
{
    // Alternate between frames 0 to 3
frame_index += frame_speed;
if (frame_index >= 4)
{
    frame_index = 0;
}
image_index = floor(frame_index);


    // Create bobbing motion effect
    y = original_y - 15 + sin(time_tracker * frequency) * amplitude;

    // Increment the custom time tracker
    time_tracker += delta_time;
}
if (global.isGoodFuture = true)
exit;