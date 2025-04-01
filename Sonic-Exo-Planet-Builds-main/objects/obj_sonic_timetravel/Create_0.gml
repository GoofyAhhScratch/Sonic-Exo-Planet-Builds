// Set the alarm for 360 steps (6 seconds at 60 FPS)
// Set initial variables
var elapsedTime = 0;
startY = 224;
endY = 82;
xPosition = 210;
duration = 90; // duration in steps (e.g., 60 steps for 1 second if the game runs at 60 FPS)
waitTime = 185; // wait time in steps (e.g., 120 steps for 2 seconds if the game runs at 60 FPS)
state = "moveTo96"; 

switch global.player_main
{
    case PLAYER_SONIC:
        sprite_index = spr_sonic_bounce;
    break;
    case PLAYER_TAILS: 
        sprite_index = spr_tails_bounce;
    break;
}
