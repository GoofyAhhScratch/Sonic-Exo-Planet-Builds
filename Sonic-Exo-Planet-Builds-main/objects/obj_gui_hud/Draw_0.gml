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
_x = _camera_x + 32 + time_offset + global.hudOffset;
_y = _camera_y + 14;
	
draw_sprite(spr_gui_hud_time, local_timer < 32400 ? 0 : dynamic_frame, _x, _y);
draw_set_font(global.font_digits);
draw_set_halign(fa_left);
draw_text(_x + 25, _y - 5, timer_string);
	
// Position and draw ring counter	
_x = _camera_x + 36 + rings_offset + global.hudOffset;
_y = _camera_y + 30;
	
draw_sprite(spr_gui_hud_rings, global.player_rings > 0 ? 0 : dynamic_frame, _x, _y);	
draw_set_font(global.font_digits);
draw_set_halign(fa_right);
draw_text(_x + 53, _y - 5, global.player_rings);
		
// Position and draw player's life count
_x = _camera_x + 40 + lives_offset + global.hudOffset;
_y = _camera_y + _height - 16;

draw_sprite(spr_gui_hud_lives, _player.PlayerType, _x, _y);
draw_set_font(global.font_digits);
draw_set_halign(fa_right);
draw_text(_x + 16, _y-3, global.life_count); //25 for x
// Check if both conditions are true
// Check if timetraveleffectshown is true
// Check if timetraveleffectshown is true
// Define coordinates
// Define coordinates
// Define coordinates
var display_x = _x + 50;
var display_y = _y;

if global.timetravelingTo != "" {
	var _sprite
	if global.timetravelingTo = "C" or global.timetravelingTo = "D" { _sprite = spr_gui_hud_future; }
	else { _sprite = spr_gui_hud_past; }
	
	//that weird edge case with present..
	if global.timetravelingTo = "A" {
	if global.timezone > 2 {
		_sprite = spr_gui_hud_past;
	} else if global.timezone < 3 {
		_sprite = spr_gui_hud_future;
	}
	}
	draw_sprite(_sprite, _player.PlayerType, display_x, display_y);
}
