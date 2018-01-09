/// scr_player_jumping()

// Jump State
scr_inputs();
scr_player_variables();


if (on_ground == true)
{
    y_speed = -p_jumpspeed;
}

if (jump_timer >= 60)
{
    jump_timer++
}
else
{
    current_state = player_state.air;
    jump_timer = 0
}

scr_collisions(); 
