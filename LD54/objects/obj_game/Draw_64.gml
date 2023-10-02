if room != RoomTransition
{
	draw_set_font(fnt_test)
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	draw_text_transformed(0,0,tutMessage[tutNum], 1.5, 1.5, 0)
}

if room == RoomTransition
{
	draw_set_font(fnt_nextLevelTitle)
	draw_set_halign(fa_center)
	var c = c_white
	draw_text_transformed_color(500, room_height / 2, "LEVEL: " + string_delete(global.nextLevel, 0, 5), 1, 1, 0, c, c, c, c, 1)
	switch(global.nextLevel)
	{
		case(Level1):
			draw_set_font(fnt_nextLevel)
			draw_text_transformed_color(500, (room_height / 2) + 70, "Collect the keys to open the exit", 1, 1, 0, c, c, c, c, 1)
		break;
		case(Level2):
			draw_set_font(fnt_nextLevel)
			draw_text_transformed_color(500, (room_height / 2) + 70, "Defeat all 5 enemies", 1, 1, 0, c, c, c, c, 1)
		break;
		case(Level3):
			draw_set_font(fnt_nextLevel)
			draw_text_transformed_color(500, (room_height / 2) + 70, "Canceling your reload mid combat\ncan be useful in the right circumstances", 1, 1, 0, c, c, c, c, 1)
		break;
		case(Level4):
			draw_set_font(fnt_nextLevel)
			draw_text_transformed_color(500, (room_height / 2) + 70, "Shotgunners are dangerous up close\nbut a joke from a far, keep your distance", 1, 1, 0, c, c, c, c, 1)
		break;
		case(Level5):
			draw_set_font(fnt_nextLevel)
			draw_text_transformed_color(500, (room_height / 2) + 70, "Beware the snipers reach, and execute them all", 1, 1, 0, c, c, c, c, 1)
		break;
		case(Level6):
			draw_set_font(fnt_nextLevel)
			draw_text_transformed_color(500, (room_height / 2) + 70, "Better to shit in the shower\nthan to shower in the shit", 1, 1, 0, c, c, c, c, 1)
		break;
		case(Level7):
			draw_set_font(fnt_nextLevel)
			draw_text_transformed_color(500, (room_height / 2) + 70, "Storm their fortress, leave no survivors", 1, 1, 0, c, c, c, c, 1)
		break;
		case(Level8):
			draw_set_font(fnt_nextLevel)
			draw_text_transformed_color(500, (room_height / 2) + 70, "Happy spooky month", 1, 1, 0, c, c, c, c, 1)
		break;
		default:
			draw_set_font(fnt_nextLevel)
			draw_text_transformed_color(500, (room_height / 2) + 70, "Get to Exit", 1, 1, 0, c, c, c, c, 1)
		break;
	}
}