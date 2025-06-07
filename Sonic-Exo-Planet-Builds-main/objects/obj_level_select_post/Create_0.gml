// --- Initialize level select globals ---
global.levelList = [
    "mmz1", "mmz2", "ccz1", "ccz2", 
    "bcz1", "bcz2", "ffz1", "ffz2", 
    "ssz1", "ssz2", "ggz1", "ggz2", 
    "aaz1", "aaz2", "fccz1", "fccz2"
]; // FCCZ stages placed last

global.levellistanimation = 0;  // current level selection index (for spr_level_select)
global.levelIndex = 0;          // duplicate for sync if needed
global.frametimepost    = 0;    // current suffix frame index
global.GoToRoom         = noone; // room id to goto when selected

// --- Build an array of valid rooms for level transitions ---
// We use asset_get_index() to convert a room name (string) to its room ID.
// Only rooms that actually exist will be added.

global.roomTT = [];  // This will be an array of arrays: [ room_name_string, room_ID ]

var room_names = [
    // MMZ
    "mmz1A", "mmz1B", "mmz1C", "mmz1D",
    "mmz2A", "mmz2B", "mmz2C", "mmz2D",
    // CCZ
    "ccz1A", "ccz1B", "ccz1C", "ccz1D",
    "ccz2A", "ccz2B", "ccz2C", "ccz2D",
    // BCZ
    "bcz1A", "bcz1B", "bcz1C", "bcz1D",
    "bcz2A", "bcz2B", "bcz2C", "bcz2D",
    // FFZ
    "ffz1A", "ffz1B", "ffz1C", "ffz1D",
    "ffz2A", "ffz2B", "ffz2C", "ffz2D",
    // SSZ
    "ssz1A", "ssz1B", "ssz1C", "ssz1D",
    "ssz2A", "ssz2B", "ssz2C", "ssz2D",
    // GGZ
    "ggz1A", "ggz1B", "ggz1C", "ggz1D",
    "ggz2A", "ggz2B", "ggz2C", "ggz2D",
    // AAZ
    "aaz1A", "aaz1B", "aaz1C", "aaz1D",
    "aaz2A", "aaz2B", "aaz2C", "aaz2D",
    // FCCZ (Final CCZ; may not all be available)
    "fccz1A", "fccz1B", "fccz1C", "fccz1D",
    "fccz2A", "fccz2B", "fccz2C", "fccz2D"
];

for (var i = 0; i < array_length(room_names); i++) {
    var room_name_str = "rm_stage_" + room_names[i];
    // asset_get_index returns the asset index if the asset exists,
    // otherwise it returns -1.
    var room_id = asset_get_index(room_name_str);
    if (room_id != -1) {
        // Append [ key string, room ID ] to our global.roomTT array.
        global.roomTT[array_length(global.roomTT)] = [room_name_str, room_id];
    }
}