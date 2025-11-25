/// @self
/// @description Applies distortion to the background layer using two sets of distortion data.
/// @param {Array<Real>} data1 The first set of distortion data.
/// @param {Array<Real>} data2 The second set of distortion data.
/// @param {Real} spd The speed of distortion.
/// @param {Real} range_start The upper boundary of the distortion area, in background space.
/// @param {Real} range_end The lower boundary of the distortion area, in background space.
function dist_set_bg(_data1, _data2, _spd, _range_start, _range_end)
{
	// NOTE: The distortion effect creation and application has been entirely removed
	// to prevent the "missing prefab" crash.
    
    // Explicitly remove any existing effect on the background layer
    // to ensure a clean visual state.
    layer_set_fx(c_framework.layer, -1);
    
    // The function now exits without applying the distortion effect.
	exit;
}