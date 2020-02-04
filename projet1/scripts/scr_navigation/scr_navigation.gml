
var obj_id = argument0;			// Objet devant effectuer le chemin
var path = argument1;			// Chemin à emprunter
var start_x = argument2;		// Coord x du point de départ
var start_y = argument3;		// Coord y du point de départ
var end_x = argument4;			// Coord x du point à atteindre
var end_y = argument5;			// Coord y du point à atteindre
var move_speed = argument6;		// Vitesse de déplacemment

var check1;
var check2 = 1; //Variable servant de test pour l'orientation d'une unité après son déplacement

//Si chemin possible non trouvable
if(!(mp_grid_path(global.navigation_grid, path, start_x, start_y, end_x, end_y, 0)))
{
	instance_destroy(obj_move_square);
	check1 = false;
}
else
{
	with(obj_id)
	{
		mp_grid_path(global.navigation_grid, path, start_x, start_y, end_x, end_y, 0);
		//show_message("Path edited");
		
		path_set_precision(global.navigate, 1);
		
		path_start(path, move_speed, path_action_stop, 0);
		
		//Si arrivée à droite de l objet
		if((x) < end_x)
		{
			sprite_index = moving_mod;
			image_xscale = -1;
				
			check2 = 1;
		}
		//Si arrivée à gauche de l objet
		if((x) > end_x)
		{
			sprite_index = moving_mod;
			image_xscale = 1;
			check2 = 2;
		}
		
		//Si l objet est arrivé depuis la gauche
		if((x == end_x) && (check2 == 1))
		{
			sprite_index = offensive_mod;
			image_xscale = -1;
		}
		//Si l objet est arrivé depuis la droite
		if((x == end_x) && (check2 == 2))
		{
			sprite_index = offensive_mod;
			image_xscale = 1;
		}
		
		if(x == end_x && y == end_y)
		{
			sprite_index = offensive_mod;
		}	
		
	}
	check1 = true;
}



















