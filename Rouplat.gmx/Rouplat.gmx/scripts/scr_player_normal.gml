//Inputs
scr_inputs();

var move = key_right - key_left;
hspd = move * player_spd; 

if (key_left) facing = 0; else if (key_right) facing = 1;  

firing_delay = firing_delay -1;

vspd += grav; 

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

//Wall Sliding
/*if (place_meeting(x+hspd,y,obj_wall_parent)) 
    {
        if (key_right) || (key_left)
        {
        states = states.wall_slide
        }
    }*/
if (place_meeting(x+hspd,y,obj_wall_parent) && (key_jump))
{
    vspd = 0;
    hspd = 0;
    states = states.wall_jump;
}

//Collisions
scr_collision();
