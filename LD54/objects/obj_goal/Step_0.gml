if goalCur == goalNumber
	{
		goalOpen = true;
	}

if goalOpen == true
{
	if pointerCreated == "no"{
			instance_create_layer(obj_player.x, obj_player.y, "Instances", obj_pointer)
			pointerCreated = "yes"
	}
	show_debug_message("Goal Open")
	image_index = 1;
}