// Register methods
m_devmenu();

all_categories_data = ds_map_create();
categories_count = 0;
category_data = [];
category_id = 0;
category_options_count = 0;
option_id = 0;
room_to_load = noone;

// Set Discord data
discord_set_data("Developer Menu", "", "drp_placeholder2", "");

// Add categories and options to the developer menu
m_devmenu_add_category    // ID 0
(
	//"SONIC EXO-PLANET",
    "SONIC EXO-PLANET" + "\n" + "DEVELOPER MENU", //ORBINAUT FRAMEWORK 2
	[
	    "START GAME",
	    "ROOM SELECT",
	    "SETTINGS",
	    "CLOSE GAME"
	]
);

m_devmenu_add_category    // ID 1
(
    "START GAME" + "\n" + "press action 3 to delete a save file",
	[
	    "NO SAVE",
	    "SAVE 0",
	    "SAVE 1",
	    "SAVE 2",
	    "SAVE 3"
	]
);

// Automatically generate a room list
var _room_list = [];

for (var _i = 0; _i-1 < room_last; _i++)
{
	_room_list[_i] = string_upper(room_get_name(_i));
}

m_devmenu_add_category    // ID 2
(
    "ROOM SELECT", _room_list
);

m_devmenu_add_category    // ID 3
(
    "SETTINGS",
	[
	    "GAMEPAD RUMBLE",
	    "BGM VOLUME",
	    "SFX VOLUME",
	    "WINDOW SCALE",
	    "FULLSCREEN",
	    "VSYNC"
	]
);

m_devmenu_add_category    // ID 4
(
    "PLAYER 1 SELECT",
	[
	    "SONIC",
	    "TAILS"
	]
);

m_devmenu_add_category    // ID 5
(
    "PLAYER 2 SELECT",
	[
	    "SONIC",
	    "TAILS",
	    "NO PLAYER 2"
	]
);

// Load the first category of the developer menu
m_devmenu_load_category(0);