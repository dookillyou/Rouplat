/// scr_collision()

//Shaun collision system 

if (place_meeting(x+x_speed,y,obj_wall_parent))
{
    while(!place_meeting(x+sign(x_speed),y,obj_wall))
        {
            x += sign(x_speed);
        }
    x_speed = 0;
}

x += x_speed;

if (place_meeting(x,y+y_speed,obj_wall_parent))
{
    while(!place_meeting(x,y+sign(y_speed),obj_wall))
        {
            y += sign(y_speed);
        }
    y_speed = 0
}

y += y_speed; 
