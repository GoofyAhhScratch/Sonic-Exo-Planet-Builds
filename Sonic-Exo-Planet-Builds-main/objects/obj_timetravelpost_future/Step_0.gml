switch State
{
	case SIGN_STATIC:
		var _player = player_get(0);

		if !obj_check_hitbox(_player)
		{
			return;
		}
	
		audio_play_sfx(sfx_future);
		if global.timezone = 2 { global.timetravelingTo = "A" } //present
		else {
			if global.isGoodFuture = true {
				global.timetravelingTo = "C"
			} else {
				global.timetravelingTo = "D"
			}
		}
		State = SIGN_SPIN;
	break;
	case SIGN_SPIN:
		TimeSpin += 1;
		ani_run_by_timer(c_framework.frame_counter, 3);
		if TimeSpin > 60
		{
			State = SIGN_HASSPUN;	
		}
	break;
	case SIGN_HASSPUN:
		self.image_index = 4
	break;
}