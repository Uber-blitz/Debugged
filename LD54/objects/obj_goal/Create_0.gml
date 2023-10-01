goalType = ["enemyKills", "keysCollected"]
goalOpen = false;
goalCur = 0;

switch(room)
{
	case Room1:
		goal = goalType[1];
		goalNumber = 2;
		goalCur = 0;
	break;
	
	case Room2:
		goal = goalType[0];
		goalNumber = 1;
		goalCur = 0;
	break;
}
