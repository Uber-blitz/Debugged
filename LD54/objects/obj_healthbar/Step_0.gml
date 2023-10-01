

if x != obj_player.x or y != obj_player.y - 51{
	move_towards_point(obj_player.x, obj_player.y - 51, 5)
}
else{
	speed = 0
}

image_index = obj_player.maxHP - obj_player.HP