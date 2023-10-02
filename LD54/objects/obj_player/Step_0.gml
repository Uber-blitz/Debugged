state()
updateHealth()

obj_ammo.x = x
obj_ammo.y = y - 40

obj_healthbar.x = x
obj_healthbar.y = y - 51

image_angle = point_direction(obj_player.x, obj_player.y, obj_cursor.x, obj_cursor.y)

x = clamp(x,0 + 32, room_width - 32)
y = clamp(y,0 + 32, room_height - 32)

if obj_goal.goalOpen && place_meeting(x, y, obj_goal)
{
	room_goto_next();
}