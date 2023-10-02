goalType = ["enemyKills", "keysCollected"]
goalOpen = false;
goalCur = 0;
pointerCreated = "no"

switch(room)
{
	case Level1:
		goal = goalType[1];
		goalNumber = 2;
		goalCur = 0;
		global.nextLevel = 2
	break;
	
	case Level2:
		goal = goalType[0];
		goalNumber = 5;
		goalCur = 0;
		global.nextLevel = 3
	break;
	
	case Level3:
		goal = goalType[1];
		goalNumber = 4;
		goalCur = 0;
		global.nextLevel = 4;
	break;
		
	case Level4:
		goal = goalType[0];
		goalNumber = 13;
		goalCur = 0;
		global.nextLevel = 5
	break;
	
	case Level5:
		goal = goalType[0]
		goalNumber = 22
		goalCur = 0
		global.nextLevel = 6
	break;
	
	case Level6:
		goal = goalType[1]
		goalNumber = 4
		goalCur = 0
		global.nextLevel = 7
	break;
	case Level7:
		goal = goalType[0]
		goalNumber = 32
		goalCur = 0
		global.nextLevel = 1
	break;
	
	default:
		goal = [0]
		goalNumber = 0
		goalCur = 0
		global.nextLevel = 1;
	break;
}
