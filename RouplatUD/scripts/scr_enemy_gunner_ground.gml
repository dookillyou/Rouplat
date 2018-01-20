///scr_enemy_gunner_ground()
// Ground check
if (on_ground == false)
{
    scr_last_state();
    current_state = enemy_gunner_state.air;
}

scr_collisions();


