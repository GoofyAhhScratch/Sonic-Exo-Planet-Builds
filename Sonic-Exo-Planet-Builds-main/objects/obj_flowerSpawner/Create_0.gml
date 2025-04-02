// Call the inherited event
event_inherited();

state = ANIMAL_STATE_APPEAR;
grv = 0.1;
vel_x = random_range(-2, 2);
vel_y = -2;
vel_x_bounce = 0;
vel_y_bounce = 0;

obj_set_priority(7);
obj_set_culling(CULLING.REMOVE);