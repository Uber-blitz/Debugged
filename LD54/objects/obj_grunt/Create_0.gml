detectionRadius = 250
walkSpeed = 3
enemyHP = 8
minRadius = 100
bulletSpeed = 10

enemyShoot = function()
{
	var bullet = instance_create_layer(x, y, "Instances", obj_enemyBullet) //makes bullet
	with (bullet) //passes bullet variables like angle
	{
		audio_play_sound(snd_Enemyshot, 1, false);
		image_angle = point_direction(x, y, obj_player.x, obj_player.y)
		direction = point_direction(x, y, obj_player.x, obj_player.y)
		speed = other.bulletSpeed
		decay = false
		damage = 1
		penMax = 1
		image_index = 0
	}
}

// Inherit the parent eventq
event_inherited();

