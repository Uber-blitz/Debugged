window_mouse_set_locked(true)

if room == Level1
{
	tutorial = true
}
else tutorial = false;

tutNum = 0;
tutMessage = ["Welcome to Debugged!", "Move with WASD", "Aim with the mouse", "Fire with space!", "Reload with R", "Check the bottom left for \ngoal requirement!", ""]
tutDelay = 180;

winTargX = 200
winTargY = 200
doRun = false

act = function()
{
	doRun = true
	show_debug_message("worked")
}

TSwait = time_source_create(time_source_game, 3, time_source_units_seconds, act, [])

windowScale = function(targetX, targetY)
{
	if doRun == true
	{
		var winX = window_get_width()
		var winY = window_get_height()
	
		if targetX > winX
		{
			window_center()
			window_set_size(winX+5, winY+5)
		}
		if targetX < winX
		{
			window_center()
			window_set_size(winX-5, winY-5)
		}
		
		if (winX == targetX) and (winY == targetY)
		{
			window_center()
			alarm[0] = room_speed * 5
			doRun = false
		}
	}
}

//if room == RoomTransition
//{
//	for (i = 0; window_get_height() != 800; i += 1)
//	{
//		show_debug_message("yes this works")
//		if window_get_height() > 800
//		{
//			window_set_size(window_get_width - 10, window_get_height - 10)
//			window_center()
//			if window_get_height() == 810
//			{
//				alarm[0] = room_speed * 5
//			}
//		}
//		else
//		{
//			window_set_size(window_get_width + 10, window_get_height + 10)
//			window_center()
//			if window_get_height() == 790
//			{
//				alarm[0] = room_speed * 5
//			}
//		}
//	}
//}

//if room != RoomTransition
//{
//	for (i = 0; window_get_height() != 200; i += 1)
//	{
//		window_set_size(window_get_width() - 10, window_get_height - 10)
//		window_center()
//		if window_get_height() == 210
//		{
//			alarm[0] = room_speed * 5
//		}
//	}
//}