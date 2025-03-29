// Draw Event Code

if (sprite_index < 0) { // Exit early if the sprite index is invalid
    exit;
}

switch (global.timezone) {
    case 1:
        sprite_index = spr_bcz_platform; // Set your sprite name here
        image_index = 0; // Shows frame 1 (adjusted for zero-based index)
        break;
    case 2:
        sprite_index = spr_bcz_platform; // Set your sprite name here
        image_index = 1; // Shows frame 2 (adjusted for zero-based index)
        break;
    case 3:
        sprite_index = spr_bcz_platform; // Set your sprite name here
        // Alternates between frames 2, 3, and 4 (adjusted for zero-based index)
        image_speed = 0.2; // Adjust speed as needed
        image_index = (floor(current_time / 500) % 3) + 2; // Cycles through 2, 3, 4
        break;
    case 4:
        sprite_index = spr_bcz_platform; // Set your sprite name here
        image_index = 5; // Shows frame 6 (adjusted for zero-based index)
        break;
    default:
        // Handle unexpected values of global.timezone
        break;
}

// Draw the sprite with extended options at a floored position
draw_sprite_ext(
    sprite_index, image_index, floor(x), floor(y), image_xscale, image_yscale, image_angle, draw_get_colour(), image_alpha
);
