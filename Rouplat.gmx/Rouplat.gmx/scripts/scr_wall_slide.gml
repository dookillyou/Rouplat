//Wall Sliding 
//vspd = 2;
scr_inputs();


//Wall Jumping Check 
    if (key_right) && (key_jump) && place_meeting(x-1,y,obj_wall_parent)
    {
        hspd = 0;
        vspd = 0;
        _slide = false;
        state = player_state.wall_jump; 
    }
    else _slide = true;
    
    if (key_left) && (key_jump) && place_meeting(x+1,y,obj_wall_parent)
    {
        hspd = 0;
        vspd = 0;
        _slide = false;
        state = player_state.wall_jump; 
        
    }else _slide = true;
    
    if (key_jump) && place_meeting(x+sign(hspd),y,obj_wall_parent)
    {
        hspd = 0;
        vspd = 0;
        _slide = false;
        state = player_state.wall_jump; 
        
        
    }else _slide = true;
    
//Wall Sliding
if(key_right) && (_slide == false)
    {
        if (place_meeting(x+1,y,obj_wall_parent)) 
        {
             vspd = 2;
        } 
    }
    else if (key_left) && (_slide == false)
    {
       if (place_meeting(x-1,y,obj_wall_parent)) 
        {   
            vspd = 2;
        } 
    }
    
    //Check if not sliding
    if (vspd == 0) || (!place_meeting(x+sign(hspd),y,obj_wall_parent)) 
    {
     state = player_state.normal; 
    }
    
    
scr_collision(); 
