#region var def
detectionRadius = 200
detectedPlayer = "false"
bulletReady = "yes"
walkSpeed = 3
HP = 10
checkFor = obj_player
#endregion

#region func def
stateIdle = function()
{
	if point_distance(x, y, checkFor.x, checkFor.y) < detectionRadius
	{
		state = stateActive
	}	
}

stateActive = function()
{
	
	dir = point_direction(x, y, checkFor.x, checkFor.y)
	
	if(place_meeting(x + lengthdir_x(walkSpeed, dir), y, obj_wall) == false)
	{
		x += lengthdir_x(walkSpeed, dir)
	}
	
	if(place_meeting(x, y + lengthdir_y(walkSpeed, dir), obj_wall) == false)
	{
		y += lengthdir_y(walkSpeed, dir)
	}
	
}

unStack = function()
{
	var list = ds_list_create()
	var enems = instance_place_list(x, y, objEnemy, list, true)

	if enems > 0
	{
		for (var i = 0; i < enems; ++i;)
		{
			var index = list[| i]
		    var dir = point_direction(x, y, index.x, index.y)
		
			if index.state != index.stateHit
			{
				index.x += lengthdir_x(walkSpeed, dir)
				index.y += lengthdir_y(walkSpeed, dir)
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
	if image_index >= (sprite_get_number(spriteArray[3]) - 1)
	{
		fadeOut()
		image_speed = 0
	}
	if image_alpha <= 0
	{
		
		instance_destroy()
	}
}

takeDamage = function(amount)
{
	enemyHealth -= amount
	
	state = stateHit
	sprite_index = spriteArray[2]
	image_index = 1
}

#endregion

state = stateIdle