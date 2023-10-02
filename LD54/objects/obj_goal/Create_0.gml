goalType = ["enemyKills", "keysCollected"]
goalOpen = false;
goalCur = 0;

switch(room)
{
	case Level1:
		goal = goalType[1];
		goalNumber = 2;
		goalCur = 0;
	break;
	
	case Level2:
		goal = goalType[0];
		goalNumber = 5;
		goalCur = 0;
	break;
	
	case Level3:
		goal = goalType[1]
		goalNumber = 4;
		goalCur = 0;
	break;
	
	case Level5:
		goal = goalType[1]
		goalNumber = 28
		goalCur = 0
	break;
	
	default:
		goal = [0]
		goalNumber = 0
		goalCur = 0
	break;
}
