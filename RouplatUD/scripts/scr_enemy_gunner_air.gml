/// scr_enemy_gunner_air()
// Ground check
if (on_ground == true)
{
    scr_last_state();
    current_state = enemy_gunner_state.ground; 
}

// Gravity
if (y_speed < 10)
{
    y_speed += grav;
}

scr_collisions();  
