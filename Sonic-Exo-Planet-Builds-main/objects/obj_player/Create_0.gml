#region MACRO

#macro PLAYER_STATE_CONTROL 0
#macro PLAYER_STATE_HURT 1
#macro PLAYER_STATE_NO_CONTROL 2
#macro PLAYER_STATE_DEATH 3
#macro PLAYER_STATE_DEBUG_MODE 4
#macro PLAYER_STATE_MAIN_RESPAWN 5

#macro AIR_TIMER_DEFAULT 1800
#macro CAMERA_VIEW_TIMER_DEFAULT 120

#macro PLAYER_SONIC	0
#macro PLAYER_TAILS	1
#macro PLAYER_KNUCKLES 2
#macro PLAYER_AMY 3
#macro PLAYER_NOONE 255
#macro PLAYER_COUNT instance_number(obj_player)

#macro PARAM_GRV_DEFAULT 0.21875
#macro PARAM_GRV_UNDERWATER 0.0625
#macro PARAM_GRV_TAILS_UP -0.125
#macro PARAM_GRV_TAILS_DOWN 0.03125
#macro PARAM_DROPDASH_CHARGE 22
#macro PARAM_DASH_CHARGE 30
#macro PARAM_SKID_SPEED_THRESHOLD 4
#macro PARAM_RECORD_LENGTH 32
#macro PARAM_CPU_DELAY 16

#macro CPU_STATE_MAIN 0
#macro CPU_STATE_STUCK 1
#macro CPU_STATE_RESPAWN_INIT 2
#macro CPU_STATE_RESPAWN 3
#macro CPU_BEHAVIOUR_S2 0
#macro CPU_BEHAVIOUR_S3 1

#macro PHYSICS_S1 0
#macro PHYSICS_CD 1
#macro PHYSICS_S2 2
#macro PHYSICS_S3 3
#macro PHYSICS_SK 4

#macro ACTION_NONE 0
#macro ACTION_SPINDASH 1
#macro ACTION_DASH 2
#macro ACTION_DROPDASH 3
#macro ACTION_GLIDE	5
#macro ACTION_CLIMB 6
#macro ACTION_FLIGHT 7
#macro ACTION_TRANSFORM 8
#macro ACTION_HAMMERDASH 9
#macro ACTION_HAMMERSPIN 10
#macro ACTION_CARRIED 12
#macro GLIDE_STATE_AIR 0
#macro GLIDE_STATE_GROUND 1
#macro GLIDE_STATE_FALL 2
#macro CLIMB_STATE_NORMAL 0
#macro CLIMB_STATE_LEDGE 1
#macro DEATH_STATE_WAIT 0
#macro DEATH_STATE_RESTART 1
#macro SHIELD_NONE 0
#macro SHIELD_NORMAL 1
#macro SHIELD_LIGHTNING 2
#macro SHIELD_FIRE 3
#macro SHIELD_BUBBLE 4
#macro SHIELD_STATE_NONE 0
#macro SHIELD_STATE_ACTIVE 1
#macro SHIELD_STATE_DISABLED 2
#macro SHIELD_STATE_DOUBLESPIN 3

#macro ANI_IDLE 0
#macro ANI_WAIT 1
#macro ANI_MOVE 2
#macro ANI_SPIN 3
#macro ANI_SPINDASH 4
#macro ANI_PUSH 5
#macro ANI_DUCK 6
#macro ANI_LOOKUP 7
#macro ANI_GRAB 8
#macro ANI_HURT 9
#macro ANI_DEATH 10
#macro ANI_DROWN 11
#macro ANI_SKID 12
#macro ANI_TRANSFORM 13
#macro ANI_BREATHE 14
#macro ANI_BOUNCE 15
#macro ANI_FLIP 16
#macro ANI_BALANCE 17
#macro ANI_BALANCE_FLIP 18
#macro ANI_BALANCE_PANIC 19
#macro ANI_BALANCE_TURN 20
#macro ANI_FLY 21
#macro ANI_FLY_TIRED 22
#macro ANI_SWIM 23
#macro ANI_SWIM_TIRED 24
#macro ANI_SWIM_CARRY 25
#macro ANI_GLIDE_AIR 26
#macro ANI_GLIDE_FALL 27
#macro ANI_GLIDE_GROUND 28
#macro ANI_GLIDE_LAND 29
#macro ANI_CLIMB_WALL 30
#macro ANI_CLIMB_LEDGE 31
#macro ANI_HAMMERDASH 32
#macro ANI_FALL 33

#endregion

// Inherit the parent event
event_inherited();

// Register methods
m_player();

obj_set_priority(2);
obj_set_culling(CULLING.PAUSEONLY);

global.HESABOUTTOTRAVEL = 0;
global.ttsparkTimer = 0;

if global.timetravelingTo = ""
{
	global.obj_player_x = 0;
	global.obj_player_y = 0;
	global.obj_player_xvel = 0;
	global.obj_player_yvel = 0;	
	global.obj_player_gsp = 0;		
}

scr_player_init();
scr_player_debug_mode_init();

enum PLAYER_STATE_GRABBED {
    GRABBED = 11
}