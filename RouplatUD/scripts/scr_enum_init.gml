//scr_enum_init

enum player_state
{
    ground, // 0 
    air, // 1
    wall_slide // 2
}

// Gunner enemy states
enum enemy_gunner_state
{
    ground, // 0 
    air, // 1
    wander, // 2
    attack // 3
    /* Later on once we get more enemys in the game, it will be better off having 
    an base enum state for enemys, but I don't think we have to worry about it 
    for now, as we're pushing for a playable proto
    */
}
