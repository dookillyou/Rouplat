//Wall Sliding 
scr_inputs();

<<<<<<< HEAD
<<<<<<< HEAD
state = player_state.normal; 

=======
=======
vspd = 2;
>>>>>>> master

if (key_jump)
{
    state = player_state.wall_jumping; 
}

    //Check if not sliding ( for reference ) 
    /*if (vspd == 0) || (!place_meeting(x+sign(hspd),y,obj_wall_parent)) 
    {
     state = player_state.normal; 
    }*/
    
// *New* check if not sliding by Doo         
if (place_meeting(x+1,y,obj_wall_parent))
{
    if(!key_right)
        {
            state = player_state.movement;
        }
} else state = player_state.normal;
if (place_meeting(x-1,y,obj_wall_parent)) 
{   
    if (!key_left)
        {
            state = player_state.movement;
        }
<<<<<<< HEAD
}

if (!place_meeting(x,y,obj_wall_parent)) 
{   
    state = player_state.movement;
}

if (!place_meeting(x,y+1,obj_wall_parent)) 
{   
    state = player_state.movement;
}

=======
} else state = player_state.normal;
>>>>>>> b64c45099e02de3a64fcd7149802e87b7a0fe52a

//State goes ham inbetween two walls 
/*
The logic is so simple, few day break was useful,
Rather than checking if vspd was 0 && checking for wall collision with
sign(hspd). Check for the wall then see if you ! using the button of choice 
*/
scr_collision(); 
>>>>>>> master
