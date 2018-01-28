/// scr_inputs()

// Player inputs
key_right = keyboard_check(ord("D"));
key_left = keyboard_check(ord("A"));
key_jump = keyboard_check_pressed(vk_space);
key_shoot = mouse_check_button(mb_left);

//animation
if (key_right)
{
    p_facing = 1
    image_xscale = 1
    sprite_index = spr_player_walking
}

if (key_left)
{
    p_facing = -1
    image_xscale = -1
    sprite_index = spr_player_walking
}

if(!key_left&&!key_right)
{
    sprite_index = spr_player
}

