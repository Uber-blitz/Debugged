draw_set_font(fnt_test);
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);

if goal = "keysCollected"
{
	draw_text(0, 400, "Keys: " + string(goalCur) + "/" + string(goalNumber));
}

if goal = "enemyKills"
{
	draw_text(0, 400, "Kills: " + string(goalCur) + "/" + string(goalNumber));
}
