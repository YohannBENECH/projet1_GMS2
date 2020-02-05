// Ce script sert à tester si une ou plusieurs instances sont dans la zone d'attaque de l'unité


var num;									// Nombre d'unités detectées dans l'attack range
var target_list = ds_list_create();			// Liste des unités detectées dans l'attack range
var i=0;									// Compteur

//-------------------------------------------------------------------------------------------------------

with(par_all_units)
{
	num = instance_place_list(x, y, attack_square, target_list, true);
}


//-------------------------------------------------------------------------------------------------------
if(num > 0)
{	
    for (i = 0; i < num; ++i;)
    {
		instance_destroy(target_list[|i]);
    }
}

show_message(num);

return target_list;

ds_list_destroy(target_list);