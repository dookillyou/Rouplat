/// scr_inputs()

// Player inputs
key_right = keyboard_check(ord("D"));
key_left = keyboard_check(ord("A"));
key_jump = keyboard_check_pressed(vk_space);
key_shoot = mouse_check_button(mb_left);

if (key_right)
{
    p_facing = 1
}

if (key_left)
{
    p_facing = -1
}

