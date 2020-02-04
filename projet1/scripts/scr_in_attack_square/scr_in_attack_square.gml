// Ce script sert à tester si une ou plusieurs instances sont dans la zone d'attaque de l'unité


var num;									// 
var target_list = ds_list_create();			// 
var target_list_1 = ds_list_create();		// 
var target_list_2 = ds_list_create();		// 


//-------------------------------------------------------------------------------------------------------
num = instance_place_list(par_all_units.x, par_all_units.y, move_square, target_list_1, true);

for(var i=0; i < num ; i++)
{
	ds_list_insert(target_list, i, target_list_1[|i]);
}

//-------------------------------------------------------------------------------------------------------
num = num + instance_place_list(par_all_units.x, par_all_units.y, attack_square, target_list_2, true);

for(i = i; i < num ;i++)
{
	ds_list_insert(target_list, i, target_list_2[|i]);
}

//-------------------------------------------------------------------------------------------------------
if(num > 0)
{	
    for (i = 0; i < num; ++i;)
    {
		instance_destroy(target_list[|i]);
    }
}
ds_list_destroy(target_list);

show_message(num);

return target_list;
