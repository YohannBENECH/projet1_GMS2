/// ALL THE ROOM YOU ARE SUPPOSED TO BE ABLE TO JUMP

switch(argument0)
	{
		case 0:
			room_goto(dev_room_selection);
		break;
		
		case 1:
			room_goto(intro_story);
		break;
		
		case 2:
			room_goto(prologue_battle);
		break;
		
		default :
			room_goto(Menu);
		break;
	}