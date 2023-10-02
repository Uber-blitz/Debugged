detectionRadius = 250
walkSpeed = 2
enemyHP = 8
minRadius = 80
bulletSpeed = 9

enemyShoot = function()
{
	var randAng = 0
	var randSpd = 0
	for (var i = 0; i < 6; ++i)
	{
	    var bullet = instance_create_layer(x, y, "Instances", obj_enemyBullet) //makes bullet
		with (bullet) //passes bullet variables like angle
		{
			audio_play_sound(snd_Enemyshot,3,false);
			image_angle = point_direction(x, y, obj_player.x, obj_player.y) + randAng
			direction = point_direction(x, y, obj_player.x, obj_player.y) + randAng
			speed = other.bulletSpeed + randSpd
			decay = true
			damage = 0.5
			penMax = 1
			image_index = 1
		}
		randAng = irandom_range(-15, 15)
		randSpd = irandom_range(-2, 2)
	}
}

// Inherit the parent event
event_inherited();

