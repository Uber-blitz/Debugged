if(follow != noone)
{
	xTo = follow.x
	yTo = follow.y
}

x += (xTo - x)/10
y += (yTo - y)/10

camera_set_view_pos(view_camera[0], x - (camWidth*0.5), y - (camHeight*0.5))