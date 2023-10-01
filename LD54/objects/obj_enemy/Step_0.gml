
if distance_to_object(obj_player) < detectionRadius{
	detectedPlayer = "true"
}

if detectedPlayer == "true"{
	if distance_to_object(obj_player) > 75{
		move_towards_point(obj_player.x, obj_player.y, 4)
	}
	else{
		speed = 0
	}
	if bulletReady == "yes"{
		var inst = instance_create_layer(x,y,"Instances",obj_bullet)
		with (inst){
			direction = point_direction(x,y, obj_player.x, obj_player.y)
			image_angle = direction
			speed = 10
			instance = "enemy"
		}
		alarm[0] = room_speed * 0.5
		bulletReady = "no"
	}
}

if HP <= 0{
	instance_destroy()
}