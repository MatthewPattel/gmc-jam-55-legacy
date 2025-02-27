/// @description Creation variables

randomize();

global.gameStage = 1;
global.gameSpeed = 0.5;

layerRacetrack = layer_get_id("BG_RACETRACK");
layer_vspeed(layerRacetrack, global.gameSpeed);
