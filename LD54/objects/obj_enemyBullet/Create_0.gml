arrayCollisions = []
pen = 0

check = function()
{
	var list = ds_list_create()
	var enems = instance_place_list(x, y, obj_player, list, true)

	if enems > 0
	{
		for (var i = 0; i < enems; ++i;)
		{
			var index = list[| i]
			if index.state != index.stateDeath
			{
				if (array_contains(arrayCollisions, index) == false)
				{
					array_push(arrayCollisions, index)
					index.takeDamage(damage)
					pen += 1
				}
			}
		}
	}

	ds_list_clear(list) 
}