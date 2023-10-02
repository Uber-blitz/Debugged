check()

if pen >= penMax
{
	instance_destroy()
}

if decay == true
{
	speed *= 0.95
	if speed <= 0.3
	{
		instance_destroy()
	}
}