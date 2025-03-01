var _player = player_get(view_current);
if _player == noone
{
	exit;
}

var _camera_x = camera_get_x(view_current);
var _camera_y = camera_get_y(view_current);
var _height = camera_get_height(view_current);
var _x = 0;
var _y = 0;
	
// Position and draw current score
//_x = _camera_x + 36 + score_offset;
//_y = _camera_y + 14;
	
//draw_sprite(spr_gui_hud_score, 0, _x, _y);
//draw_set_font(global.font_digits);
//draw_set_halign(fa_right);
//draw_text(_x + 77, _y - 5, global.score_count);
	
// Position and draw current time
_x = _camera_x + 32 + time_offset;
_y = _camera_y + 14;
	
draw_sprite(spr_gui_hud_time, local_timer < 32400 ? 0 : dynamic_frame, _x, _y);
draw_set_font(global.font_digits);
draw_set_halign(fa_left);
draw_text(_x + 25, _y - 5, timer_string);
	
// Position and draw ring counter	
_x = _camera_x + 36 + rings_offset;
_y = _camera_y + 30;
	
draw_sprite(spr_gui_hud_rings, global.player_rings > 0 ? 0 : dynamic_frame, _x, _y);	
draw_set_font(global.font_digits);
draw_set_halign(fa_right);
draw_text(_x + 53, _y - 5, global.player_rings);
		
// Position and draw player's life count
_x = _camera_x + 40 + lives_offset;
_y = _camera_y + _height - 16;

draw_sprite(spr_gui_hud_lives, _player.PlayerType, _x, _y);
draw_set_font(global.font_digits_small);
draw_set_halign(fa_right);
draw_text(_x + 25, _y + 1, global.life_count);
// Check if both conditions are true
// Check if timetraveleffectshown is true
// Check if timetraveleffectshown is true
// Define coordinates
// Define coordinates
// Define coordinates
var display_x = _x + 50;
var display_y = _y;

if (global.timetravel_started = true && global.timetravelaction = false) {
    // Check if timetraveleffectshown is true
    if (global.timetraveleffectshown == true || global.timetravelspeed == true) {
        // Play all frames of spr_gui_hud_past
        sprite_index = spr_gui_hud_past;
        image_speed = 1; // Set the speed to 1 to play the animation at its default speed
        draw_sprite(spr_gui_hud_past, image_index, display_x, display_y);
    } else if (global.timetraveleffectshown == false && global.timetravelspeed == true) {
        // Show the first frame of spr_gui_hud_past
        sprite_index = spr_gui_hud_past;
        image_speed = 0; // Stop animation
        image_index = 0; // Set to the first frame
        draw_sprite(spr_gui_hud_past, 0, display_x, display_y);
    } else if (global.timepost == 1) {
        // Show spr_gui_hud_past if signpost is 1
        sprite_index = spr_gui_hud_past;
        image_speed = 0; // Stop animation (if needed)
        image_index = 0; // Set to the first frame if desired
        draw_sprite(spr_gui_hud_past, image_index, display_x, display_y);
    } else if (global.timepost == 2) {
        // Show spr_gui_hud_future if signpost is 2
        sprite_index = spr_gui_hud_future;
        image_speed = 0; // Stop animation (if needed)
        image_index = 0; // Set to the first frame if desired
        draw_sprite(spr_gui_hud_future, image_index, display_x, display_y);
    } else {
        // Do not show spr_gui_hud_past
        image_speed = 0; // Stop animation (if necessary)
        sprite_index = -1; // Hide the sprite
    }
} else {
    // Hide the sprite if timetravelaction is true or timetraveleffectshown is false
    image_speed = 0; // Stop animation (if necessary)
    sprite_index = -1; // Hide the sprite
}
