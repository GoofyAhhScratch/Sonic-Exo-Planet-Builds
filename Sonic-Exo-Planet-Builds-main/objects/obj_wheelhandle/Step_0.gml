if grabbed
{
    // Update rotation smoothly
    rotation_angle += rotation_speed;
    rotation_speed *= 0.98; // Friction slows down spin naturally
    rotation_speed = clamp(rotation_speed, -6, 6); // Limit max speed

    // If rotation speed is too low or player jumps, detach
    if abs(rotation_speed) < 0.5 || _input_press.action1
    {
        grabbed = false;
        obj_player.handle_target = noone;
        obj_player.state = PLAYER_STATE_CONTROL;
        obj_player.animation = ANI_SPIN;

        // Apply stored momentum
        obj_player.vel_x = lengthdir_x(rotation_speed * 2, rotation_angle);
        obj_player.vel_y = lengthdir_y(rotation_speed * 2, rotation_angle);

        sound_played = false; // **Reset grab sound flag**

        audio_play_sfx(sfx_jump);
    }
}
if !grabbed && place_meeting(x, y, obj_player) && variable_instance_exists(obj_player, "state") 
{
    if obj_player.state != PLAYER_STATE_CARRIED && obj_player.state != PLAYER_STATE_GRABBED.GRABBED
    {
        // Attach player to handle safely
        obj_player.state = PLAYER_STATE_GRABBED.GRABBED;
        obj_player.handle_target = id;
        obj_player.animation = ANI_GRAB;
        obj_player.vel_x = 0;
        obj_player.vel_y = 0;

        grabbed = true;

        // **Play sound only when grab starts**
        if !sound_played
        {
            audio_play_sfx(sfx_grab);
            sound_played = true; // Prevent future repeats
        }
    }
}
