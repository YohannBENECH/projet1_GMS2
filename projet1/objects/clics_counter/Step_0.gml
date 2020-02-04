/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

//COMPTER LES CLICS
if(mouse_check_button_pressed(mb_left))
{
	nb_clic = nb_clic + 1;
}

if(nb_clic > 0)
{
	if(mouse_check_button_pressed(mb_right))
	{
		nb_clic = nb_clic - 1;
	}
}

// RENSEIGNEMENT DU SCRIPT POUR LE JUMP DANS LE CAS OU LE DIALOGUE EST TERMINE
if(nb_clic >= global.clic_limite) 
{
	scr_room_jumper(global.room_next_number);
}
