/// scr_player_air()

// Air State
scr_inputs();
scr_player_variables();

// Ground check
if (on_ground == true)
{
    scr_last_state();
    current_state = player_state.ground; 
}

// Gravity
if (y_speed < 10)
{
    y_speed += grav;
}

// Wall sliding timer
if (slide_timer <= 40) && (place_meeting(x+p_facing,y,obj_wall_parent))
{
    slide_timer++
}
else
{
    can_slide = true;
    slide_timer = 0;
}

// Slide check
if (key_right || key_left) && (place_meeting(x+p_facing,y,obj_wall_parent))
{
    if (can_slide = true)
    {
        scr_last_state();
        current_state = player_state.wall_slide;
    }
}

// Off wall jump 
if (last_state = player_state.wall_slide)
{
    if (key_jump)
    {
        scr_last_state();
        y_speed = -p_jumpspeed;
        current_state = player_state.air; 
    }
}

scr_collisions();  
