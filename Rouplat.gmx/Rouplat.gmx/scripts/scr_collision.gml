// Horz Collision
if (place_meeting(x+hspd,y,obj_wall_parent))
 {
 can_jump = true;
 while(!place_meeting(x+sign(hspd),y,obj_wall_parent))
{
x += sign(hspd);
}
 
hspd = 0  
 }
 
x += hspd; 
 
// Vert Collisions
if (place_meeting(x,y+vspd,obj_wall_parent))
{
 can_jump = true;
 while(!place_meeting(x,y+sign(vspd),obj_wall_parent))
{
y += sign(vspd);
}
 
vspd = 0  
}

y += vspd; 
