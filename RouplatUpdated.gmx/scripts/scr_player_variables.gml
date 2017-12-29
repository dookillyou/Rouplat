/// scr_player_variables()
//Temp script name

move = key_right - key_left;
x_speed = move * p_movespeed;

//Gravitiy
if (y_speed < 10) y_speed += grav;


