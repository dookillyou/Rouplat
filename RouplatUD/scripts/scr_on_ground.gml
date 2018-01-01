/// on_ground();

/// Ground check for jumps
if (place_meeting(x,y+1,obj_wall_parent))
{
    on_ground = true;
    slide_timer = 0;  
}
else
{
    on_ground = false; 
}
