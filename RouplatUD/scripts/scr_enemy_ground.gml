// Ground check
if (on_ground == false)
{
    scr_last_state();
    current_state = player_state.air;
}

// Ground state, slide check(Don't really thnik we need atm)
if (place_meeting(x+p_facing,y,obj_wall_parent)) && (!on_ground)
{
    scr_last_state();
    current_state = player_state.wall_slide; 
}


scr_collisions();
