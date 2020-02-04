/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur


enum  state {

	player_turn,
	neutral_turn,
	baddies_turn
	
}

global.state = state.player_turn;

global.selected = noone;
global.selected = noone;

turn_number = 0;

//TESTS DE FINS DE TOURS
p_check_tour = false;
n_check_tour = false;
b_check_tour = false;
