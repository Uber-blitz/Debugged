
ammoMax = 12
ammo = 12
reloadSpeed = 0.15
walkSpeed = 5

//reloading = "no"
//bulletReady = "yes"

stateIdle = function()
{
	if((keyboard_check(ord("S")) == true) or (keyboard_check(ord("W")) == true) or (keyboard_check(ord("D")) == true) or (keyboard_check(ord("A")) == true))
	{
		state = stateWalk
	}
	
	if keyboard_check_pressed(vk_space)
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
	vInput = keyboard_check(ord("S")) - keyboard_check(ord("W")) //can be -1, 0, or 1
	hInput = keyboard_check(ord("D")) - keyboard_check(ord("A")) //can be -1, 0, or 1

	if(hInput != 0 or vInput != 0) //if player is not, not moving
	{
		dir = point_direction(0,0,hInput,vInput) //vives us an angle on 45* increments
		moveX = lengthdir_x(walkSpeed, dir)
		moveY = lengthdir_y(walkSpeed, dir)
		x += moveX
		y += moveY
		
		//if(place_meeting(x + moveX, y, wall) == false) 
		//{
		//	x += moveX
		//}
		//if(place_meeting(x, y + moveY, wall) == false)
		//{
		//	y += moveY
		//}
	}
	else
	{
		state = stateIdle
	}
	
	if(hInput != 0)
	{
		image_xscale = hInput
	}
	
	if keyboard_check_pressed(vk_space)
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
			speed = 10
		}
		ammo -= 1
	}
}

addBullet = function()
{
	ammo += 1
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
	
	if (ammo == ammoMax)
	{
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
	}
}

state = stateIdle