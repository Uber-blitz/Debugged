window_mouse_set_locked(true)
if room == Level1
{
	tutorial = true
}
else tutorial = false;
tutNum = 0;
tutMessage = ["Welcome to Debugged!", "Move with WASD", "Aim with the mouse", "Fire with space!", "Reload with R", "Check the bottom left for \ngoal requirement!", ""]
tutDelay = 180;



if room == RoomTransition{
	for (i = 0; window_get_height() != 800; i += 1){
		show_debug_message("yes this works")
		if window_get_height() > 800{
			window_set_size(window_get_width - 10, window_get_height - 10)
			window_center()
			if window_get_height() == 810{
				alarm[0] = room_speed * 5
			}
		}
		else{
			window_set_size(window_get_width + 10, window_get_height + 10)
			window_center()
			if window_get_height() == 790{
				alarm[0] = room_speed * 5
			}
		}
	}
}

if room != RoomTransition{
	for (i = 0; window_get_height() != 200; i += 1){
		window_set_size(window_get_width() - 10, window_get_height - 10)
		window_center()
		if window_get_height() == 210{
			alarm[0] = room_speed * 5
		}
	}
}