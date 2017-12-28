//Inputs
scr_inputs();
scr_variables();

//Jumping
if (key_jump) //&& (on_ground == true)
{
    state = player_state.jumping; 
}

//Wall jumping
/*if (place_meeting(x+hspd,y,obj_wall_parent) && (key_jump))
{
    vspd = 0;
    hspd = 0;
    state = player_state.jumping;
} */   


//Wall Sliding
if (place_meeting(x+sign(hspd),y,obj_wall_parent) && (!key_jump))
    {
        if (key_right) || (key_left)
        {
        state = player_state.slide;
        }
    }


//Collisions
scr_collision();
