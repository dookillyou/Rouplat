//Wall Sliding 
scr_inputs();

vspd = 2;

if (key_jump) && (!on_ground) 
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
            state = player_state.normal;
        }
} 
if (place_meeting(x-1,y,obj_wall_parent)) 
{   
    if (!key_left)
        {
            state = player_state.normal;
        }
} 

//State goes ham inbetween two walls 

/*
The logic is so simple, few day break was useful,
Rather than checking if vspd was 0 && checking for wall collision with
sign(hspd). Check for the wall then see if you ! using the button of choice 
*/
scr_collision(); 
