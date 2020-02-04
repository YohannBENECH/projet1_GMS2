
obj_id = argument0;


obj_id.played = true;


//Si l'unité selectionnée a joué alors la colorer en gris
if(obj_id.played == true)
{
	if(instance_exists(obj_action_menu))
	{
		instance_destroy(obj_action_menu); //Detruit le menu d'actions
	}
	
	with(obj_id)
	{
		image_blend = c_gray;
	}
}
