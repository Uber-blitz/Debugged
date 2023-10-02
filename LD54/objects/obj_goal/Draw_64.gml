draw_set_font(fnt_test);
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);

if goal = "keysCollected"
{
	draw_text_transformed(0, 1000, "Keys: " + string(goalCur) + "/" + string(goalNumber), 1.5, 1.5, 0);
}

if goal = "enemyKills"
{
	draw_text_transformed(0, 1000, "Kills: " + string(goalCur) + "/" + string(goalNumber), 1.5, 1.5, 0);
}
