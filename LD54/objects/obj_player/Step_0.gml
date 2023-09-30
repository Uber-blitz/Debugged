//if keyboard_check(ord("W"))
//{
//	y -= playerSpeed
//}
//if keyboard_check(ord("S"))
//{
//	y += playerSpeed
//}
//if keyboard_check(ord("A"))
//{
//	x -= playerSpeed
//}
//if keyboard_check(ord("D"))
//{
//	x += playerSpeed
//}

state()

//if keyboard_check_pressed(vk_space)
//{
//	if bulletReady == "yes" and reloading == "no" and ammo >= 1
//	{
//		var inst = instance_create_layer(obj_player.x, obj_player.y, "Instances", obj_bullet)
//		with(inst)
//		{
//			direction = point_direction(obj_player.x, obj_player.y, obj_cursor.x, obj_cursor.y)
//			image_angle = direction
//		}
//		ammo -= 1
//		alarm[0] = room_speed * 0.5
//		bulletReady = "no"
//	}
//}

//if keyboard_check(ord("R"))
//{
//	reloading = "yes"
//	alarm[1] = room_speed * 3
//}

x = clamp(x,0 + 32, room_width - 32)
y = clamp(y,0 + 32, room_height - 32)