#macro STARPOST_STATE_IDLE 0
#macro STARPOST_STATE_ACTIVE 1
event_inherited();
    
obj_set_priority(6);
obj_set_culling(CULLING.RESPAWN);

state = STARPOST_STATE_IDLE;
if (StarpostType = "Normal")
{
    lamp_obj = instance_create(x, y - 32, obj_starpost_lamp, {}, id);
}
if (StarpostType = "Past")
{
    lamp_obj = instance_create(x, y - 32, obj_starpost_past, {}, id);
}
if (StarpostType = "Future")
{
    lamp_obj = instance_create(x, y - 32, obj_starpost_past, {}, id);
}