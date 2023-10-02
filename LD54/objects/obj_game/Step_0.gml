if room == Level1
{
	tutorial = true
}
else tutorial = false;

if room != Level1
{
	tutNum = 6;
}


if tutorial == true
{
	if tutDelay == 0
	{
		tutNum ++
		tutDelay = 180;
	}
	
	if tutNum <= 5
	{
		tutDelay --
	}
}

windowScale(winTargX, winTargY)