function scr_player_timetravel()
{
	if global.timetravelingTo = "" { return; }
	global.obj_player_x = x-vel_x;
	global.obj_player_y = y-vel_y;
	global.obj_player_xvel = vel_x;
	global.obj_player_yvel = vel_y;
	global.obj_player_gsp = spd_ground;
	if abs(spd_ground) > 5
	{
		global.HESABOUTTOTRAVEL += 1;
		global.ttsparkTimer += 1;
		if global.ttsparkTimer > 12 {
			instance_create(x, y, obj_timetravelsparks);
			global.ttsparkTimer = 0;
		}
	}
	else
	{
		if global.HESABOUTTOTRAVEL < 170 { global.HESABOUTTOTRAVEL = 0; }
		else { global.HESABOUTTOTRAVEL += 1; }
	}
	
	if global.HESABOUTTOTRAVEL > 180 {
		var room_name = global.stageIndexes[global.zone-1] + string(global.level) + "_" + global.timetravelingTo;
		for (var i = 0; i < array_length(global.roomTT); i++) {
			if (global.roomTT[i][0] == room_name) {
				global.GoToRoom = global.roomTT[i][1];
				break;
			}
		}
		global.obj_player_x = (x-vel_x)+radius_x;
		global.obj_player_y = (y-vel_y)+radius_y;
		global.obj_player_xvel = vel_x;
		global.obj_player_yvel = vel_y;
		global.obj_player_gsp = spd_ground;
		global.HESABOUTTOTRAVEL = 0;
		room_goto(rm_stage_timetravel_cutscene_past);		
	}
	
	if global.HESABOUTTOTRAVEL = 170
	{
		fade_perform_white(FADEROUTINE.OUT, 1, false);
	}
	
}