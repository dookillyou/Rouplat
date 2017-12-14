//jumping 
vspd = -jump_speed;
can_jump = false;

if (vspd < 0) && (!key_jump_held) && !place_meeting(x,y-vspd,obj_wall_parent)
{
    vspd = max(vspd,-player_spd/4)
}

scr_player_normal(); 
