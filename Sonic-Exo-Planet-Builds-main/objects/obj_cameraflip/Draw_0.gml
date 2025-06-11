// Before drawing, ensure the application surface exists (it may be lost in certain cases).
if (surface_exists(application_surface))
{
    // Draw the entire application_surface upside down.
    // The parameters are:
    //   - x position: 0
    //   - y position: room_height (this offsets the flipped image to align correctly)
    //   - x scale: 1 (normal width)
    //   - y scale: -1 (flips vertically)
    //   - rotation: 0 (no rotation)
    //   - color: c_white (draw normally)
    //   - alpha: 1 (fully opaque)
    draw_surface_ext(application_surface, 0, room_height, 1, -1, 0, c_white, 1);
}