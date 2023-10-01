if place_meeting(x, y, obj_player)
{
	audio_play_sound(snd_KeyPickup,3,false);
	if obj_goal.goal == "keysCollected"
	{
		obj_goal.goalCur ++
		show_debug_message("Key count increment")
		instance_destroy(self);
	}
}