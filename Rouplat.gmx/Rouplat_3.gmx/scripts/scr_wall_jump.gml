//Wall Jumping 
if(key_right)
    {
        if (place_meeting(x+1,y,obj_wall_parent)) 
        {
             can_jump = true
             scr_jumping();
        } 
    }
    else if (key_left)
    {
       
        if (place_meeting(x-1,y,obj_wall_parent)) 
        {   
            can_jump = true
            scr_jumping();
        } 
    }else can_jump = false

states = states.normal; 
