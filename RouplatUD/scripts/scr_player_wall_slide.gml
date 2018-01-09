/// scr_player_wall_slide

// Wall Slide State
scr_inputs();
scr_player_variables();

y_speed = 2; 

// Ground check
if  (on_ground == true)
{
    scr_last_state();
    current_state = player_state.ground; 
}

// Off wall check
if (!place_meeting(x+p_facing,y,obj_wall_parent))
{
    scr_last_state();
    current_state = player_state.air; 
}

// Up Wall Jump check
if (key_jump) && (place_meeting(x+p_facing,y,obj_wall_parent))
{
    scr_last_state();
    current_state = player_state.air;
    y_speed = -p_jumpspeed;
    can_slide = false; 
}

// Wall jump check 
if place_meeting(x+p_facing,y,obj_wall_parent)
{
    if (key_jump) && (key_right || key_left)
    {
        scr_last_state();
        y_speed = -p_jumpspeed;
        current_state = player_state.air; 
    }
}

// Not sliding check
if (!key_right && !key_left)
{
    scr_last_state();
    current_state = player_state.air;
}

scr_collisions();
