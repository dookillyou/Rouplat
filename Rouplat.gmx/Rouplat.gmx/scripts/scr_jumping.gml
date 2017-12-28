//jumping 
scr_inputs()
scr_variables(); 
        
    vspd = -jump_speed;

<<<<<<< HEAD
if (on_ground == true) 
{
    state = player_state.movement; 
}
=======
//if (on_ground == true) 
//{
    state = player_state.normal; 
//}
>>>>>>> b64c45099e02de3a64fcd7149802e87b7a0fe52a

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


