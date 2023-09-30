if place_meeting(x, y, obj_player)
{
	if obj_goal.goal == "keysCollected"
	{
		obj_goal.goalCur ++
		show_debug_message("Key count increment")
		instance_destroy(self);
	}
}