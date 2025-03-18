// Set the alarm for 360 steps (6 seconds at 60 FPS)
// Set initial variables
var elapsedTime = 0;
startY = 224;
endY = 112;
xPosition = 210;
duration = 90; // duration in steps (e.g., 60 steps for 1 second if the game runs at 60 FPS)
waitTime = 185; // wait time in steps (e.g., 120 steps for 2 seconds if the game runs at 60 FPS)
state = "moveTo96"; 