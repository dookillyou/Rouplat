//Temp name

var move = key_right - key_left;
hspd = move * player_spd; 

if (key_left) facing = 0; else if (key_right) facing = 1;  

firing_delay = firing_delay -1;

vspd += grav; 
