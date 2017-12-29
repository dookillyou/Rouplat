/// scr_player_jumping()
scr_player_inputs();
scr_player_variables();

// Check if on_ground 
if (on_ground == true)
{
    current_state = player_state.normal; 
}

// Wall Jump check 
if (key_jump) && (!on_ground)
{
    if (key_right) || (key_left) && (place_meeting(x+sign(x_speed),y,obj_wall_parent))
    {
        y_speed = -p_jumpspeed;
        timer = 0
    }
}

// Wall Slide Timer
if (timer <= 40) && (can_slide = false)
{ // We could fiddle with the magic number to give us the outcome we want
    timer++
}
else
{
    can_slide = true;
    timer = 0; 
}

// Wall Slide check
if (can_slide == true)
{
    if (key_right) && (place_meeting(x+1,y,obj_wall_parent))
    {
        current_state = player_state.wall_slide; 
    }

    if (key_left) && (place_meeting(x-1,y,obj_wall_parent))
    {
        current_state = player_state.wall_slide; 
    }
}

scr_collisions();
