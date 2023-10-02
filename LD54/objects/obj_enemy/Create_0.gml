#region var def
//detectionRadius = set by varient
//walkSpeed = set by varient
//enemyHP = set by varient
//minRadius = set by varient
checkFor = obj_player
depth = 10
#endregion

#region func def

TSfire = time_source_create(time_source_game, 1, time_source_units_seconds, enemyShoot, [], -1)

stateIdle = function()
{
	if point_distance(x, y, checkFor.x, checkFor.y) < detectionRadius
	{
		state = stateActive
		time_source_start(TSfire)
	}	
}

stateActive = function()
{
	dir = point_direction(x, y, checkFor.x, checkFor.y)
	
	if point_distance(x, y, checkFor.x, checkFor.y) > minRadius
	{
		if(place_meeting(x + lengthdir_x(walkSpeed, dir), y, obj_wall) == false)
		{
			x += lengthdir_x(walkSpeed, dir)
		}
	
		if(place_meeting(x, y + lengthdir_y(walkSpeed, dir), obj_wall) == false)
		{
			y += lengthdir_y(walkSpeed, dir)
		}
	}
	if point_distance(x, y, checkFor.x, checkFor.y) < minRadius
	{
		if(place_meeting(x - lengthdir_x(walkSpeed, dir), y, obj_wall) == false)
		{
			x -= lengthdir_x(walkSpeed, dir)
		}
	
		if(place_meeting(x, y - lengthdir_y(walkSpeed, dir), obj_wall) == false)
		{
			y -= lengthdir_y(walkSpeed, dir)
		}
	}
}

unStack = function()
{
	var list = ds_list_create()
	var enems = instance_place_list(x, y, obj_enemy, list, true)

	if enems > 0
	{
		for (var i = 0; i < enems; ++i;)
		{
			var index = list[| i]
		    var dir = point_direction(x, y, index.x, index.y)
			
			with (index)
			{
				if(place_meeting(x + lengthdir_x(walkSpeed, dir), y, obj_wall) == false)
				{
					x += lengthdir_x(walkSpeed, dir)
				}
	
				if(place_meeting(x, y + lengthdir_y(walkSpeed, dir), obj_wall) == false)
				{
					y += lengthdir_y(walkSpeed, dir)
				}
			}
		}
	}
	ds_list_clear(list) 
}

fadeOut = function()
{
	image_alpha -= 0.05
}

stateDeath = function()
{
	fadeOut()
	if image_alpha <= 0
	{
		if obj_goal.goal == "enemyKills"
		{
			obj_goal.goalCur++
		}
		instance_destroy()
	}
}

takeDamage = function(amount)
{
	enemyHP -= amount
	if enemyHP <= 0
	{
		state = stateDeath
		if time_source_get_state(TSfire) == time_source_state_active
		{
			time_source_stop(TSfire)
		}
		mask_index = -1
	}
}

#endregion

state = stateIdle