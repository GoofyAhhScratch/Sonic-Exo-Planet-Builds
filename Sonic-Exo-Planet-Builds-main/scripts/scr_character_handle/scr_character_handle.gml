/// @function scr_character_handle
function scr_character_handle()
{
    gml_pragma("forceinline");

    // Ensure active player exists or find one dynamically
    var _player;
    if (variable_global_exists("active_player") && instance_exists(global.active_player)) 
    {
        _player = global.active_player;
    }
    else 
    {
        _player = instance_find(obj_player, 0); // Find first player instance
    }

    // Stop execution if no valid player is found
    if _player == noone { exit; }

    // Ensure the player has required properties initialized
    if !variable_instance_exists(_player, "handle_target") { _player.handle_target = noone; }
    if !variable_instance_exists(_player, "state") { _player.state = PLAYER_STATE_CONTROL; } // Default state is PLAYER_STATE_CONTROL
    if !variable_instance_exists(_player, "animation") { _player.animation = ANI_IDLE; }
    if !variable_instance_exists(_player, "vel_x") { _player.vel_x = 0; }
    if !variable_instance_exists(_player, "vel_y") { _player.vel_y = 0; }

    // Check if player is already attached
    if _player.handle_target == noone
    {
        var handle_count = (instance_exists(obj_wheelhandle)) ? instance_number(obj_wheelhandle) : 0;

        for (var h = 0; h < handle_count; h++)
        {
            var _handle = instance_find(obj_wheelhandle, h); // Retrieve handle instance safely

            // Ensure handle properties exist
            if !variable_instance_exists(_handle, "grabbed") { _handle.grabbed = false; }
            if !variable_instance_exists(_handle, "rotation_speed") { _handle.rotation_speed = 0; }
            if !variable_instance_exists(_handle, "rotation_angle") { _handle.rotation_angle = 0; }
            if !variable_instance_exists(_handle, "radius") { _handle.radius = 40; }

            // Check collision range for automatic grabbing
            var _dist_x = abs(floor(_handle.x) - floor(_player.x));
            var _dist_y = abs(floor(_handle.y) - floor(_player.y));

            if _dist_x < 16 && _dist_y < 16 // Small grab range
            {
                // Attach player to handle
                _handle.grabbed = true;
                _player.handle_target = _handle;
                _player.state = PLAYER_STATE_NO_CONTROL; // Switch to PLAYER_STATE_NO_CONTROL when grabbing
                _player.animation = ANI_GRAB;
                _player.vel_x = 0;
                _player.vel_y = 0;

                audio_play_sfx(sfx_grab);
                break;
            }
        }
        exit;
    }

    // Handle mechanics for attached player
    var _attached = _player.handle_target;

    if (_attached != noone && instance_exists(_attached) && _attached.grabbed)
    {
        var _angle = _attached.rotation_angle;
        var _radius = _attached.radius;

        // Adjust player's position based on handle rotation
        _player.x = _attached.x + lengthdir_x(_radius, _angle);
        _player.y = _attached.y + lengthdir_y(_radius, _angle);

        // Apply gradual rotation speed change (friction)
        _attached.rotation_speed *= 0.98;

        // Cap rotation speed
        _attached.rotation_speed = clamp(_attached.rotation_speed, -6, 6);
        _attached.rotation_angle += _attached.rotation_speed;

        // Detach player when they press action1
        if _input_press.action1 // Jump button triggers detachment
        {
            _attached.grabbed = false;
            _player.handle_target = noone;
            _player.state = PLAYER_STATE_CONTROL; // Switch back to PLAYER_STATE_CONTROL after jumping
            _player.animation = ANI_SPIN;

            // Apply stored momentum
            _player.vel_x = lengthdir_x(_attached.rotation_speed * 2, _attached.rotation_angle);
            _player.vel_y = lengthdir_y(_attached.rotation_speed * 2, _attached.rotation_angle);

            audio_play_sfx(sfx_jump);
        }
    }
}