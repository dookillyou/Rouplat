//Inputs
scr_inputs();
scr_variables();

//Jumping
if (key_jump) && (can_jump == true)
{
    scr_jumping()
}

//Shooting 
if (key_shoot) && (firing_delay < 0)
{
firing_delay = 5

    with(instance_create(x,y, obj_bullet))
    {
    speed = 25;
    direction = point_direction(x,y,mouse_x,mouse_y) + irandom_range(-3,3); 
    image_angle = direction; 
    }
}

//Wall jumping
if (place_meeting(x+hspd,y,obj_wall_parent) && (key_jump))
{
    vspd = 0;
    hspd = 0;
    state = player_state.jumping;
}    


//Wall Sliding
if (place_meeting(x+sign(hspd),y,obj_wall_parent) && !place_meeting(x,y-2,obj_wall_parent) && !(key_jump))
    {
        if (key_right) || (key_left)
        {
        state = player_state.slide;
        }
    }


//Collisions
scr_collision();
