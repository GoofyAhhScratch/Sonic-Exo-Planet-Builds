#macro SIGN_STATIC 0
#macro SIGN_SPIN 1
#macro SIGN_HASSPUN 2
	
// Inherit the parent event
event_inherited();
	
obj_set_hitbox(15, 32);
obj_set_priority(1);
obj_set_culling(CULLING.DISABLE);