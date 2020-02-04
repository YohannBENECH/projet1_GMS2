/// @description objet spécifique au mode Dev, raccourci pour aller a la fenetre de selection de salle

if(global.dev_mode == 1)
{
	if(keyboard_check_pressed(ord("Y")))
	{
		room_goto(dev_room_selection);
	}
}
