//TOUR DU JOUEUR

//Initialisation

var check_tour = false;

//TANT QUE LE TOUR N'EST PAS FINI

	//----------------------------------------------------------------------------------------------------------------------------
	//SELECTIONNER UNE UNITE DU JOUEUR
	//----------------------------------------------------------------------------------------------------------------------------
	if(mouse_check_button_pressed(mb_left) && instance_position(mouse_x, mouse_y, par_player) && !(instance_exists(obj_action_menu)))
	{
		instance_destroy(obj_action_menu);		// Detruit le menu d'actions
		
		instance_destroy(obj_move_square);		// Detruit les move_squares
		instance_destroy(obj_attack_square);	// Detruit les attack_squares
		square_selected = noone;				// Déselectionne la square selectionnée
		
		global.selected = instance_nearest(mouse_x, mouse_y, par_player);
		
		if(global.selected.played == false)
		{
			scr_place_attack_squares(global.selected, true);	// Placer les move_squares
			scr_place_move_squares(global.selected);			// Placer les attack_squares
		}
	}

	//----------------------------------------------------------------------------------------------------------------------------
	//Si j'ai cliqué mais que je n ai pas sélectionné de d'instance, j'efface les move squares et vide les variables de selection
	//----------------------------------------------------------------------------------------------------------------------------
	// OU
	//----------------------------------------------------------------------------------------------------------------------------
	//Si j'ai cliqué en dehors du menu alors que le perso s'est déplacé mais n'a pas joué
	//----------------------------------------------------------------------------------------------------------------------------
	
	if(mouse_check_button_pressed(mb_left) && !(instance_position(mouse_x, mouse_y, par_player)) || (mouse_check_button_pressed(mb_left) && !(instance_position(mouse_x, mouse_y, par_buttons_AM)) && instance_exists(obj_action_menu)))
	{
		square_selected = noone;		// Déselectionne la square selectionnée
		
		//Si une unité est selectionnée
		if(global.selected != noone && ((global.selected).played != true))
		{
			//Retourner l'unité à son point de départ
			var quick_path = path_add();
			scr_navigation(global.selected, quick_path, global.selected.x, global.selected.y, global.selected.balise_x, global.selected.balise_y, 1000);
			
			with(global.selected)
			{
				image_xscale = balise_xscale;
			}
			
			instance_destroy(obj_action_menu);
		}
		
		global.selected = noone;
	}

	//----------------------------------------------------------------------------------------------------------------------------
	//Si on souhaite se déplacer (cliquer sur une move square sauf celle sur la position de l'unité)
	//----------------------------------------------------------------------------------------------------------------------------
	if(global.selected != noone && mouse_check_button_pressed(mb_right) && instance_position(mouse_x, mouse_y, obj_move_square) && !(instance_position(mouse_x, mouse_y, par_all_units)))
	{	
		//Si l'unité n'a pas joué
		if(global.selected.played == false)
		{
			var square_selected = noone;
			
			square_selected = instance_nearest(mouse_x, mouse_y, obj_move_square);
			
			scr_navigation(global.selected, global.navigate, (global.selected.x), (global.selected.y), (square_selected.x), (square_selected.y), 10);
			
			instance_destroy(obj_move_square);
			instance_destroy(obj_attack_square);
			
			//Creer Menu des Actions
			instance_create_layer((global.selected.x)+100, (global.selected.y)+100, "Instances_sup", obj_action_menu);
						
			square_selected = noone; //évite d'avoir une boucle infinie
		}
	}
	
	//----------------------------------------------------------------------------------------------------------------------------
	//Si l'unité est selectionnée et que je fais clic droit sur l'unité
	//----------------------------------------------------------------------------------------------------------------------------

	if(global.selected != noone)
	{
		if(mouse_check_button_pressed(mb_right) && instance_position(mouse_x, mouse_y, global.selected))
		{
			scr_terminer(global.selected);
			instance_destroy(obj_move_square);
			instance_destroy(obj_attack_square);
		}
	}
	

//Si le joueur souhaite terminer son tour
if(keyboard_check_pressed(ord("T")) || par_player.played == true)
{
	check_tour = true;
/*RETURN*/	return check_tour;
}














