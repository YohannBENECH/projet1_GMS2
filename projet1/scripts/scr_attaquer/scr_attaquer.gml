

var tgt_list = ds_list_create();				// Liste des cibles dans l'attack_range
tgt_list = scr_in_attack_square();				// 
var tgt_number = ds_list_size(tgt_list);		// Nombre de cibles trouvées

var i=0;										// Compteur

// SI UNE UNIT2 EST SELECTIONNEE ET QU ELLE A BOUGE
if(global.selected != noone)
{
	scr_place_attack_squares(global.selected, false);
}
/*
if(tgt_number != 0)
{
	for(i=0; i < tgt_number ;i++)
	{
		instance_destroy(tgt_list[|i]);
	}
}
*/







return true;