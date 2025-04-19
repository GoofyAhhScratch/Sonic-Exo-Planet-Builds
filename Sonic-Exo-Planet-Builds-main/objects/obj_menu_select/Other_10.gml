var _input = input_get_pressed(0);

switch (state)
{
    case PAUSE_STATE_NAVIGATION:
        highlight_timer = (highlight_timer + 1) % 16;

        var _option_id = option_id;

        if (_input.down && option_id < 2)
        {
            option_id++;
        }
        else if (_input.up && option_id > 0)
        {
            option_id--;
        }

        if (option_id != _option_id)
        {
            audio_play_sfx(sfx_beep);
        }

        if (_input.enter) // Check if "Enter" is pressed
        {
            audio_play_sfx(sfx_starpost);

            switch (option_id)
            {
                case 0:
                    fade_perform_black(FADEROUTINE.OUT, 1);
                    room_goto(rm_devmenu); // Replace with the appropriate room name
                    break;
                case 1:
                    fade_perform_black(FADEROUTINE.OUT, 1);
                    room_goto(rm_devmenu); // Replace with the appropriate room name
                    break;
                case 2:
                    fade_perform_black(FADEROUTINE.OUT, 1);
                    room_goto(rm_devmenu); // Replace with the appropriate room name
                    break;
            }
        }
        break;

    default:
        break;
}
