//Wall Jumping 
scr_inputs();
scr_variables();
vspd += -0.5;

if (place_meeting(x+1,y,obj_wall_parent)) && (key_right) && (vspd == 10)
{
state = player_state.slide; 
} 
if (place_meeting(x-1,y,obj_wall_parent)) && (key_left) && (vspd == 10)
{   
state = player_state.slide;
}
  
scr_collision(); 

