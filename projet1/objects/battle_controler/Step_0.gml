/// @BATTLE CONTROLER


switch(global.state)
{
    case state.player_turn: p_check_tour = scr_state_player_turn();
	break;
	
	case state.neutral_turn: n_check_tour = scr_state_neutral_turn(turn_number); break;
    case state.baddies_turn: b_check_tour = scr_state_baddies_turn(turn_number); break;
}


//------------------------------------------------------------------------------------
//TESTS DE TRANSITION DE TOURS
//------------------------------------------------------------------------------------

//Si le tour du joueur est terminé
if(p_check_tour == true)
{
	//Si le nombre d'unités joueur n'est pas de 0
	if(instance_number(par_neutral) > 0)
	{
		global.state = state.neutral_turn;
		
		with(par_neutral)
		{
			played = false;
			
			balise_x = x;
			balise_y = y;
			balise_xscale = image_xscale;
		}
		
		p_check_tour = false;
	}
}

//Si le tour des neutres est terminé
if(n_check_tour == true)
{
	//Si le nombre d'unités neutres n'est pas de 0
	if(instance_number(par_baddies) > 0)
	{
		global.state = state.baddies_turn;
		
		with(par_baddies)
		{
			played = false;
			
			balise_x = x;
			balise_y = y;
			balise_xscale = image_xscale;
		}
		
		n_check_tour = false;
	}
}

//Si le tour des ennemis est terminé
if(b_check_tour == true)
{
	//Si le nombre d'unités enenemis n'est pas de 0
	if(instance_number(par_player) > 0)
	{
		global.state = state.neutral_turn;
		
		with(par_player)
		{
			played = false;
			
			balise_x = x;
			balise_y = y;
			balise_xscale = image_xscale;
		}
		
		b_check_tour = false;
	}
}

















