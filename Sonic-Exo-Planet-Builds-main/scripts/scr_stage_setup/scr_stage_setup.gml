/// @function scr_stage_setup
function scr_stage_setup()
{
	var _animal_array =
	[                                        
		spr_obj_animal_cucky, spr_obj_animal_flicky, spr_obj_animal_pecky, spr_obj_animal_picky,
		spr_obj_animal_pocky, spr_obj_animal_ricky, spr_obj_animal_rocky
	];
	
	/// @method m_local_random_animals
	var m_local_random_animals = function(_animals)
	{
		var _length = array_length(_animals) - 1;
	    var _a1 = irandom(_length);
	    var _a2 = irandom(_length);
		
		while _a2 == _a1
		{
		    _a2 = irandom(_length);
		}
		
		return [_animals[_a1], _animals[_a2]];
	}
	
	// Stage setup
	switch room
	{
		case rm_stage_tsz0:
		
			m_stage_set(0, "TECH STADIUM", ACT_SINGLE, bgm_woofle, m_local_random_animals(_animal_array), 1024, 1536, rm_devmenu, true);
			
			player_spawn(112, 896, global.player_main, "Objects");
			player_spawn(96, 896, global.player_cpu, "Objects");
			
			var _bg_dist = dist_get_data(EFFECTDATA.LZBG);
			var _fg_dist = dist_get_data(EFFECTDATA.LZFG);
			
			dist_set_fg([], _fg_dist, -0.5, 0, room_height, ["GraphicsA", "AssetsA", "GraphicsB", "AssetsB"]);
			dist_set_bg(_bg_dist, _bg_dist, -0.25, 192, 348);

			pal_load(spr_pal_tsz_primary, spr_pal_tsz_secondary);
			collision_load_binary("widths_tsz", "heights_tsz", "angles_tsz", "CollisionA", "CollisionB");

			ani_add_sprite(spr_tsz_asset_flower, 12);
			
			// Background
			
			bg_add_layer(spr_tsz_bg_layer0, 0, 72, 0, 0, 0, 0, 0.350, 0);				// Far Horizon
			bg_set_perspective_x(0.200, 8);
			bg_add_layer(spr_tsz_bg_layer0, 72,  120, 72,  0,  0, 0, 0.225, 0);			// Far Buildings
			bg_add_layer(spr_tsz_bg_layer0, 192, 116, 192, 0,  0, 0, 0.275, 0);			// Far Mechanical Stuff
			bg_add_layer(spr_tsz_bg_layer0, 308, 8, 308, 0, 0, 0, 0.245, 0);			// Bottom Lights
			bg_set_perspective_x(0.315, 2);
			bg_add_layer(spr_tsz_bg_layer0, 316, 32, 316, 0, 0, 0, 0.345, 0);			// Bottom Tubes
			bg_set_perspective_x(0.750, 8);
			bg_add_layer(spr_tsz_bg_layer1, 0,   32,  0,   0, -0.10,  0, 0.375, 0);		// Discs 1
			bg_add_layer(spr_tsz_bg_layer1, 32,  32,  32,  0, -0.025, 0, 0.340, 0);		// Discs 2
			bg_add_layer(spr_tsz_bg_layer1, 80,  112, 80,  0,  0,     0, 0.300, 0);		// Close Buildings
			bg_add_layer(spr_tsz_bg_layer1, 208, 96,  208, 0,  0,     0, 0.345, 0);		// Close Mechanical Stuff	
			bg_add_layer(spr_tsz_bg_layer2, 0, 128, 192, 0, 0, 0, 0.300, 0);			// Water Layer
			bg_set_perspective_x(1.0, 2);
			bg_set_perspective_y(water_level_init)
		break;
			
		case rm_stage_bcz2A:
        
			//the stage setup too
			m_stage_set(2, "SAKURA STATION", 0, bgm_blossom_city_zone, [spr_obj_animal_flicky, spr_obj_animal_pocky], room_height, -1, rm_devmenu, false);    
			player_spawn(48, 384, global.player_main, "Instances");
			player_spawn(28, 384, global.player_cpu, "Instances");
			collision_load_binary("widths_s3", "heights_s3", "angles_s3", "CollisionA", "CollisionB");
			
			//heres the background shit
			bg_add_layer(spr_bcz_background_2, 0, 320, 0, 0, 0, 0, 0.20, 0.02);				// the sun is leaking
			bg_add_layer(spr_bcz_background_1, 0, 320, 0, 0, 0, 0, 0.45, 0.02);				// m ohnutains
			bg_add_layer(spr_bcz_background_0, 0, 320, 0, 0, 0, 0, 0.60, 0.02);				// buildings
			bg_add_layer(spr_bcz_background_3, 0, 320, 0, 0, 0, 0, 0.70, 0.07);				// that pillar thingy
        
		break;
					
		case rm_stage_bcz1A:
        
			//the stage setup too
			m_stage_set(1, "SAKURA STATION", 0, bgm_blossom_city_zone, [spr_obj_animal_flicky, spr_obj_animal_pocky], room_height, -1, rm_stage_bcz2A, false);    
			player_spawn(32, 544, global.player_main, "Instances");
			player_spawn(32, 544, global.player_cpu, "Instances");
			collision_load_binary("widths_s3", "heights_s3", "angles_s3", "CollisionA", "CollisionB");
			
			//heres the background shit
			bg_add_layer(spr_bcz_background_2, 0, 320, 0, 0, 0, 0, 0.20, 0.02);				// the sun is leaking
			bg_add_layer(spr_bcz_background_1, 0, 320, 0, 0, 0, 0, 0.45, 0.02);				// m ohnutains
			bg_add_layer(spr_bcz_background_0, 0, 320, 0, 0, 0, 0, 0.60, 0.02);				// buildings
			bg_add_layer(spr_bcz_background_3, 0, 320, 0, 0, 0, 0, 0.70, 0.07);				// that pillar thingy
        
		break;
		case rm_stage_mmz1A:
        
			//the stage setup too
			m_stage_set(4, "MINTY MOUNTAIN", 0, bgm_minty_mountain_zone, [spr_obj_animal_flicky, spr_obj_animal_pocky], room_height, -1, rm_devmenu, false);    
			player_spawn(80, 2064, global.player_main, "Instances");
			player_spawn(70, 2064, global.player_cpu, "Instances");
			collision_load_binary("widths_s3", "heights_s3", "angles_s3", "CollisionA", "CollisionB");
			
// Add background layers
bg_add_layer(spr_mmz_background_6, 0, 320, 0, 0, 0, 0, 0, 0);
bg_add_layer(spr_mmz_background_5, 0, 320, 0, 0, 0, 0, 0.40, 0.02);
bg_add_layer(spr_mmz_background_4, 0, 320, 0, 0, 0, 0, 0.45, 0.02);
bg_add_layer(spr_mmz_background_3, 0, 320, 0, 0, 0.40, 0, 0.75, 0.02);
bg_add_layer(spr_mmz_background_2, 0, 320, 0, 0, 0.30, 0, 0.60, 0.02);
bg_add_layer(spr_mmz_background_1, 0, 320, 0, 0, 0.20, 0, 0.60, 0.02);

// Variables for animating spr_mmz_background_4
var background_frame = 0;
var frame_speed = 60; // Adjust the animation speed as needed
var total_frames = 2; // Total number of frames in the sprite

// Update the frame in the game step event
background_frame += frame_speed;
if (background_frame >= total_frames) {
    background_frame = 0;
}

// Draw the animated background layer
draw_sprite(spr_mmz_background_4, floor(background_frame), 320, 0);
		break;
				case rm_stage_mmz1B:
        
			//the stage setup too
			m_stage_set(4, "MINTY MOUNTAIN", 0, bgm_mmz_p_zone, [spr_obj_animal_flicky, spr_obj_animal_pocky], room_height, -1, rm_devmenu, false);    
			player_spawn(80, 2064, global.player_main, "Instances");
			player_spawn(70, 2064, global.player_cpu, "Instances");
			collision_load_binary("widths_s3", "heights_s3", "angles_s3", "CollisionA", "CollisionB");
			
			//heres the background shit
			bg_add_layer(spr_mmz_past_backgorund_4, 0, 500, 0, 0, 0, 0, 0.40, 0.02);	
			bg_add_layer(spr_mmz_past_backgorund_3, 0, 500, 0, 0, 0, 0, 0.45, 0.03);		
			bg_add_layer(spr_mmz_past_backgorund_2, 0, 500, 0, 0, 0, 0, 0.60, 0.03);				// the sun is leaking
			bg_add_layer(spr_mmz_past_backgorund_1, 0, 500, 0, 0, 0, 0, 0.75, 0.03);				// m ohnutains
			
        
		break;
						case rm_stage_mmz1C:
        
			//the stage setup too
			m_stage_set(4, "MINTY MOUNTAIN", 0, bgm_mmz_gf_zone, [spr_obj_animal_flicky, spr_obj_animal_pocky], room_height, -1, rm_devmenu, false);    
			player_spawn(57, 217, global.player_main, "Instances");
			player_spawn(35, 217, global.player_cpu, "Instances");
			collision_load_binary("widths_s3", "heights_s3", "angles_s3", "CollisionA", "CollisionB");
			
			//heres the background shit
			bg_add_layer(spr_mmz_gf_background_9, 0, 500, 0, 0, 0, 0, 0.15, 0.02);	
			bg_add_layer(spr_mmz_gf_background_8, 0, 500, 0, 0, 0, 0, 0.20, 0.02);	
			bg_add_layer(spr_mmz_gf_background_7, 0, 500, 0, 0, 0, 0, 0.25, 0.02);		
			bg_add_layer(spr_mmz_gf_background_6, 0, 500, 0, 0, 0, 0, 0.30, 0.02);				// the sun is leaking
			bg_add_layer(spr_mmz_gf_background_5, 0, 500, 0, 0, 0, 0, 0.35, 0.02);	
			bg_add_layer(spr_mmz_gf_background_4, 0, 500, 0, 0, 0, 0, 0.40, 0.02);	
			bg_add_layer(spr_mmz_gf_background_3, 0, 500, 0, 0, 0, 0, 0.45, 0.02);		
			bg_add_layer(spr_mmz_gf_background_2, 0, 500, 0, 0, 0, 0, 0.60, 0.02);				// the sun is leaking
			bg_add_layer(spr_mmz_gf_background_1, 0, 500, 0, 0, 0, 0, 0.75, 0.02);				// m ohnutains
			
        
		break;
			case rm_stage_tutorial:
        
			//the stage setup too
			m_stage_set(4, "TUTORIAL", 0, bgm_mmz_gf_zone, [spr_obj_animal_flicky, spr_obj_animal_pocky], room_height, -1, rm_devmenu, false);    
			player_spawn(57, 217, global.player_main, "Instances");
			player_spawn(35, 217, global.player_cpu, "Instances");
			collision_load_binary("widths_s3", "heights_s3", "angles_s3", "CollisionA", "CollisionB");
			
			//heres the background shit
			bg_add_layer(spr_mmz_past_backgorund_4, 0, 500, 0, 0, 0, 0, 0.40, 0.02);	
			bg_add_layer(spr_mmz_past_backgorund_3, 0, 500, 0, 0, 0, 0, 0.45, 0.03);		
			bg_add_layer(spr_mmz_past_backgorund_2, 0, 500, 0, 0, 0, 0, 0.60, 0.03);				// the sun is leaking
			bg_add_layer(spr_mmz_past_backgorund_1, 0, 500, 0, 0, 0, 0, 0.75, 0.03);				// m ohnutains
			
        
		break;
		case rm_stage_ggz1A:
        
			//the stage setup too
			m_stage_set(4, "GHASTLY GOURD", 0, bgm_ghastly_gourd_present, [spr_obj_animal_flicky, spr_obj_animal_pocky], room_height, -1, rm_devmenu, false);    
			player_spawn(57, 217, global.player_main, "Instances");
			player_spawn(35, 217, global.player_cpu, "Instances");
			collision_load_binary("widths_s3", "heights_s3", "angles_s3", "CollisionA", "CollisionB");
			
			//heres the background shit
			bg_add_layer(spr_ggz_present_background_4, 0, 500, 0, 0, 0, 0, 0, 0.00);	
			bg_add_layer(spr_ggz_present_background_3, 0, 500, 0, 0, 0, 0, 0.20, 0.00);		
			bg_add_layer(spr_ggz_present_background_2, 0, 500, 0, 0, 0, 0, 0.40, 0.00);				// the sun is leaking
			bg_add_layer(spr_ggz_present_background_1, 0, 500, 0, 0, 0, 0, 0.50, 0.00);				// m ohnutains
			
        
		break;
		case rm_stage_aaz1A:
        
			//the stage setup too
			m_stage_set(4, "ABASE AIRS", 0, bgm_ghastly_gourd_present, [spr_obj_animal_flicky, spr_obj_animal_pocky], room_height, -1, rm_devmenu, false);    
			player_spawn(57, 217, global.player_main, "Instances");
			player_spawn(35, 217, global.player_cpu, "Instances");
			collision_load_binary("widths_s3", "heights_s3", "angles_s3", "CollisionA", "CollisionB");
			
			//heres the background shit
			bg_add_layer(spr_mmz_background_6, 0, 320, 0, 0, 0, 0, 0, 0);
			bg_add_layer(spr_mmz_background_5, 0, 320, 0, 0, 0, 0, 0.40, 0.02);	
			bg_add_layer(spr_mmz_background_4, 0, 320, 0, 0, 0, 0, 0.45, 0.02);		
			bg_add_layer(spr_mmz_background_3, 0, 320, 0, 0, 0.40, 0, 0.75, 0.02);				// the sun is leaking
			bg_add_layer(spr_mmz_background_2, 0, 320, 0, 0, 0.30, 0, 0.60, 0.02);
			bg_add_layer(spr_mmz_background_1, 0, 320, 0, 0, 0.20, 0, 0.60, 0.02);	// m ohnutains

				break;
						case rm_stage_bcz2B:
        
			//the stage setup too
			m_stage_set(1, "SAKURA STATION", 0, bgm_bcz_past_zone, [spr_obj_animal_flicky, spr_obj_animal_pocky], room_height, -1, rm_devmenu, false);    
			player_spawn(48, 384, global.player_main, "Instances");
			player_spawn(28, 384, global.player_cpu, "Instances");
			collision_load_binary("widths_s3", "heights_s3", "angles_s3", "CollisionA", "CollisionB");
			
			//heres the background shit
			bg_add_layer(spr_bczpast_background_1, 0, 500, 0, 0, 0, 0, 0.80, 0.50);				// the sun is leaking
			bg_add_layer(spr_bczpast_background_2, 0, 500, 0, 0, 0, 0, 0.65, 0.50);				// m ohnutains
			bg_add_layer(spr_bczpast_background_3, 0, 500, 0, 0, 0, 0, 0.55, 0.50);				// buildings
			bg_add_layer(spr_bczpast_background_4, 0, 500, 0, 0, 0, 0, 0.45, 0.50);	
			bg_add_layer(spr_bczpast_background_5, 0, 500, 0, 0, 0, 0, 0.35, 0.50);	
			bg_add_layer(spr_bczpast_background_6, 0, 500, 0, 0, 0, 0, 0.55, 0.50);// that pillar thingy
			bg_add_layer(spr_bczpast_background_7, 0, 500, 0, 0, 0, 0, 0.50, 0.50);
			bg_add_layer(spr_bczpast_background_8, 0, 500, 0, 0, 0, 0, 0.45, 0.50);
			bg_add_layer(spr_bczpast_background_8, 0, 500, 0, 0, 0, 0, 0.40, 0.50);
			bg_add_layer(spr_bczpast_background_8, 0, 500, 0, 0, 0, 0, 0.35, 0.50);
			bg_add_layer(spr_bczpast_background_9, 0, 500, 0, 0, 0, 0, 0.30, 0.50);
			bg_add_layer(spr_bczpast_background_10, 0, 500, 0, 0, 0, 0, 0.25, 0.50);
        
		break;
								case rm_stage_bcz1B:
        
			//the stage setup too
			m_stage_set(1, "SAKURA STATION", 0, bgm_bcz_past_zone, [spr_obj_animal_flicky, spr_obj_animal_pocky], room_height, -1, rm_devmenu, false);    
			player_spawn(32, 544, global.player_main, "Instances");
			player_spawn(32, 544, global.player_cpu, "Instances");
			collision_load_binary("widths_s3", "heights_s3", "angles_s3", "CollisionA", "CollisionB");
			
			//heres the background shit
			bg_add_layer(spr_bczpast_background_1, 0, 320, 0, 0, 0, 0, 0.3, 0.04);				// the sun is leaking
			bg_add_layer(spr_bczpast_background_2, 0, 320, 0, 0, 0, 0, 0.4, 0.04);				// m ohnutains
			bg_add_layer(spr_bczpast_background_3, 0, 320, 0, 0, 0, 0, 0.5, 0.04);				// buildings
			bg_add_layer(spr_bczpast_background_4, 0, 320, 0, 0, 0, 0, 0.6, 0.04);	
			bg_add_layer(spr_bczpast_background_5, 0, 320, 0, 0, 0, 0, 0.7, 0.04);	
			bg_add_layer(spr_bczpast_background_6, 0, 320, 0, 0, 0.15, 0, 0.55, 0.04);// that pillar thingy
			bg_add_layer(spr_bczpast_background_7, 0, 320, 0, 0, 0.9, 0, 0.50, 0.04);
			bg_add_layer(spr_bczpast_background_8, 0, 320, 0, 0, 0.8, 0, 0.45, 0.04);
			bg_add_layer(spr_bczpast_background_8, 0, 320, 0, 0, 0.6, 0, 0.40, 0.04);
			bg_add_layer(spr_bczpast_background_8, 0, 320, 0, 0, 0.4, 0, 0.35, 0.04);
			bg_add_layer(spr_bczpast_background_9, 0, 320, 0, 0, 0.3, 0, 0.30, 0.04);
			bg_add_layer(spr_bczpast_background_10, 0, 320, 0, 0, 0, 0, 0.25,0.04);
			
		break;
		    
			case rm_stage_timetravel_cutscene_past:
        // Here's the background setup
        bg_add_layer(spr_bcz_background_2, 0, 320, 0, 0, 0, 0.50, 0, 0);
        break;
	}
}