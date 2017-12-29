/// scr_player_wall_slide()
scr_player_inputs();
scr_player_variables(); 
y_speed = 2;

// Off wall check
if(!place_meeting(x+p_facing*4,y,obj_wall_parent))
{
    current_state = player_state.normal;    
}

// Checking if on ground
if (on_ground == true)
{
    current_state = player_state.normal; 
}

// Checking if not holding down Right/Left key
if (p_facing == -1) && (!key_left)
{
    current_state = player_state.normal;
}

if (p_facing == 1) && (!key_right)
{
    current_state = player_state.normal;
}

// State change (Jumping)
if (key_jump) 
{
    current_state = player_state.jumping; 
    y_speed -= p_jumpspeed;
    can_slide = false;
}


scr_collisions(); 
