if place_meeting(x, y, obj_player)
{
	audio_play_sound(bad_to_the_bone,3,false);
	instance_destroy(obj_enemy, true)
	instance_destroy(obj_enemyBullet)
	room_goto(endRoom)
	window_set_size(800,800)
	window_center()
}
visible = false