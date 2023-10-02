#region var def
ammoMax = 12
ammo = 12
reloadSpeed = 0.15
walkSpeed = 5
maxHP = 16
HP = 16
bulletSpeed = 10
#endregion

#region func def
stateIdle = function()
{
	if((keyboard_check(ord("S")) == true) or (keyboard_check(ord("W")) == true) or (keyboard_check(ord("D")) == true) or (keyboard_check(ord("A")) == true))
	{
		state = stateWalk
	}
	
	if keyboard_check_pressed(vk_space) or mouse_check_button_pressed(mb_left)
	{
		shoot()
	}
	
	if (keyboard_check_pressed(ord("R")) and (ammo < ammoMax))
	{
		state = stateReload
	}
	
}


stateWalk  = function()
{	
	//true and false = 1/0 in gms
	var vInput = keyboard_check(ord("S")) - keyboard_check(ord("W")) //can be -1, 0, or 1
	var hInput = keyboard_check(ord("D")) - keyboard_check(ord("A")) //can be -1, 0, or 1

	if(hInput != 0 or vInput != 0) //if player is not, not moving
	{
		dir = point_direction(0,0,hInput,vInput) //vives us an angle on 45* increments
		moveX = lengthdir_x(walkSpeed, dir)
		moveY = lengthdir_y(walkSpeed, dir)
		if(place_meeting(x + (moveX*1.05), y, obj_wall) == false) 
		{
			x += moveX
			obj_cursor.x += moveX*1.9
		}
		if(place_meeting(x, y + (moveY*1.05), obj_wall) == false)
		{
			y += moveY
			obj_cursor.y += moveY*1.9
		}
	}
	else
	{
		state = stateIdle
	}
	
	if keyboard_check_pressed(vk_space) or mouse_check_button_pressed(mb_left)
	{
		shoot()
	}
	
	if (keyboard_check_pressed(ord("R")) and (ammo < ammoMax))
	{
		state = stateReload
	}
}

shoot = function() //modifiers currently does nothing
{
	if ammo > 0
	{
		var bullet = instance_create_layer(x, y, "Instances", obj_bullet) //makes bullet
		with (bullet) //passes bullet variables like angle
		{
			image_angle = point_direction(obj_player.x, obj_player.y, obj_cursor.x, obj_cursor.y)
			direction = point_direction(obj_player.x, obj_player.y, obj_cursor.x, obj_cursor.y)
			speed = other.bulletSpeed
			damage = 1
			penMax = 1
		}
		ammo -= 1
		obj_ammo.image_index += 1
		audio_play_sound(snd_PlayerFire,5,false);
	}
}

addBullet = function()
{
	ammo += 1
	obj_ammo.image_index += 1
}
TSreload = time_source_create(time_source_game, reloadSpeed, time_source_units_seconds, addBullet, [], 1)

stateReload = function()
{
	//true and false = 1/0 in gms
	vInput = keyboard_check(ord("S")) - keyboard_check(ord("W")) //can be -1, 0, or 1
	hInput = keyboard_check(ord("D")) - keyboard_check(ord("A")) //can be -1, 0, or 1

	if(hInput != 0 or vInput != 0) //if player is not, not moving
	{
		dir = point_direction(0, 0, hInput, vInput) //vives us an angle on 45* increments
		moveX = lengthdir_x(walkSpeed, dir)
		moveY = lengthdir_y(walkSpeed, dir)
	
		x += moveX /2
		y += moveY /2
	}
	
	obj_ammo.image_index = ammo + (ammoMax + 1) //setting up UI to correctly display reloading
	
	if (ammo == ammoMax)
	{
		obj_ammo.image_index = 0
		if time_source_get_state(TSreload) == time_source_state_active
		{
			time_source_stop(TSreload)
		}
		state = stateIdle
	}
	else
	{
		if time_source_get_state(TSreload) != time_source_state_active
		{
			time_source_start(TSreload)
		}
	}
	
	if keyboard_check_pressed(ord("R"))
	{
		if time_source_get_state(TSreload) == time_source_state_active
		{
			time_source_stop(TSreload)
		}
		state = stateIdle
		obj_ammo.image_index = ammoMax - ammo
	}
}

stateDeath = function()
{
	
}

takeDamage = function(amount)
{
	HP -= amount
	if HP <= 0
	{
		state = stateDeath
	}
}

#endregion

state = stateIdle