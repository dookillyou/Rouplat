//Inputs
scr_inputs();
scr_variables();

//Jumping
if (key_jump) && (on_ground == true)
{
    state = player_state.jumping; 
    on_ground = false
    
}





//Wall jumping
/*if (place_meeting(x+hspd,y,obj_wall_parent) && (key_jump))
{
    vspd = 0;
    hspd = 0;
    state = player_state.jumping;
} */   





//Collisions
scr_collision();
