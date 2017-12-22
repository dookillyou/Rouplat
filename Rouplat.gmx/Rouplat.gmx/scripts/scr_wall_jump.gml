//Wall Jumping 
scr_inputs();
scr_variables(); //Temp name
// Not even wall jump, but we're close. Logic of it confuses me
// Create a boost by accident :> 
if ((place_meeting(x+1,y,obj_wall_parent))&&(key_right))||((place_meeting(x-1,y,obj_wall_parent)) && (key_left))
    {
    vspd = -wall_jump;
    wall_jump += 0.2 //Adds to wall jump causing that boost
    } 
else {wall_jumping = 5;}

scr_collision(); 
