if (window_mouse_get_locked())
{
    x += window_mouse_get_delta_x();
    y += window_mouse_get_delta_y();
}

var vInput = keyboard_check(ord("S")) - keyboard_check(ord("W")) //can be -1, 0, or 1
var hInput = keyboard_check(ord("D")) - keyboard_check(ord("A")) //can be -1, 0, or 1

//if(hInput != 0 or vInput != 0) //if player is not, not moving
//{
//	dir = point_direction(0,0,hInput,vInput) //vives us an angle on 45* increments
//	moveX = lengthdir_x(obj_player.walkSpeed, dir)
//	moveY = lengthdir_y(obj_player.walkSpeed, dir)
//	x += moveX*1.6
//	y += moveY*1.6
//}

x = clamp(x, camera_get_view_x(view_camera[0]), camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]))
y = clamp(y, camera_get_view_y(view_camera[0]), camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]))