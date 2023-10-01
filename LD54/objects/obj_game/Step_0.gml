if room = Room1
{
	tutorial = true
}
else tutorial = false;

if tutorial = true
{
	if tutDelay == 0
	{
		tutNum ++
		tutDelay = 180;
	}
	
	if tutNum <= 4
	{
	tutDelay --
	}
}