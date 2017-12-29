/// scr_player_normal()
scr_player_inputs();
scr_player_variables(); 

// Up Wall Jump check
if (key_jump) && (!on_ground)
{
    if (key_right) || (key_left) && (place_meeting(x+sign(x_speed),y,obj_wall_parent))
    {
        can_jump = false;
        current_state = player_state.jumping;
        y_speed -= p_jumpspeed;
    }
}

// Jump check
if (key_jump) && (on_ground == true)
{
    if (can_jump == true)
    {
        current_state = player_state.jumping; 
        y_speed = -p_jumpspeed;
    }
}

/*if (key_jump) && (key_left)  //When the player attempted to Left wall jump it would often pull the player to state 0(normal) 
{                              // This allowed the player to keep jumping 
    if (!on_ground)
    {
        current_state = player_state.jumping;
        y_speed -= p_jumpspeed;
    }
}
*/
// Wall slide check
if (key_right) && (place_meeting(x+1,y,obj_wall_parent))
{
    current_state = player_state.wall_slide; 
}

if (key_left) && (place_meeting(x-1,y,obj_wall_parent))
{
    current_state = player_state.wall_slide; 
}


scr_collisions(); 
