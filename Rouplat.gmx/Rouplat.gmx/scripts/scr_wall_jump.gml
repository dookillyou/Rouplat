//Wall Jumping 
scr_inputs();
<<<<<<< HEAD
scr_variables();
=======
scr_variables(); //Temp name
// Not even wall jump, but we're close. Logic of it confuses me
// Create a boost by accident :> 
if ((place_meeting(x+1,y,obj_wall_parent))&&(key_right))||((place_meeting(x-1,y,obj_wall_parent)) && (key_left))
    {
    vspd = -wall_jump;
    wall_jump += 0.2 //Adds to wall jump causing that boost
    } 
else {wall_jumping = 5;}
>>>>>>> b64c45099e02de3a64fcd7149802e87b7a0fe52a
vspd += -0.5;

if (place_meeting(x+1,y,obj_wall_parent)) && (key_right) && (vspd == 10)
{
state = player_state.slide; 
} 
if (place_meeting(x-1,y,obj_wall_parent)) && (key_left) && (vspd == 10)
{   
state = player_state.slide;
}
  
scr_collision(); 
