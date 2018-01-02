// Ground check
if (on_ground == true)
{
    scr_last_state();
    current_state = player_state.ground; 
}

// Gravity
if (y_speed < 10)
{
    y_speed += grav;
}

// Wall sliding timer
if (slide_timer <= 40) && (place_meeting(x+p_facing,y,obj_wall_parent))
{
    if (can_slide == false)
    {
        slide_timer++
    }
}
else
{
    can_slide = true;
    slide_timer = 0;
}

scr_collisions();  
