window_mouse_set_locked(true)
if room == Level1
{
	tutorial = true
}
else tutorial = false;
tutNum = 0;
tutMessage = ["Welcome to Debugged!", "Move with WASD", "Aim with the mouse", "Fire with space!", "Check the bottom left for goal\nrequirement!", ""]
tutDelay = 180;


if room == RoomTransition{
	alarm[0] = room_speed * 5
}