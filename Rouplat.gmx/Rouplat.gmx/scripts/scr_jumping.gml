//jumping 
scr_inputs()
scr_variables(); 
        
    vspd = -jump_speed;

if (on_ground == true) 
{
    state = player_state.movement; 
}

//if (in_air = false)
//{
    
//}

/*if (place_meeting(x-1,y,obj_wall_parent)) && (!on_ground)
{
   if (key_left) && (key_jump)
   {
        vspd = -jump_speed;
   }
}*/



scr_collision(); 


