//-----------------------------------------------------------------------------------------------------
//PLACER ATTACKSQUARES --------------------------------------------------------------------------------
//-----------------------------------------------------------------------------------------------------

instance_destroy(obj_attack_square);

var obj_id = argument0;					// ID de l'unité en question
var moving_range = argument1;			// Booléen de prise en compte ou non de la distance de deplacement

var dist_max = obj_id.Classe.range;		// Distance de déplacement maximum de l'unité

var a;									// Compteur
var b;									// Compteur

//VARIABLES PLACEMENT ATTACKSQUARE
var a_start;							// Début du compteur a
var a_limit;							// Fin du compteur a

//b
var b_start;							// Début du compteur b
var b_limit;							// Fin du compteur a
var b_backup_start;						// Variable tampon du début du compteur b
var b_backup_limit;						// Variable tampon de la fin du compteur b

// TEST DE PRISE EN COMPTE DE LA DISTANCE DE DEPLACEMENT OU NON ------------------------
if(moving_range == true)
{
	a_start = ((obj_id.x) - (dist_max*64)) - ((obj_id.attack_range)*64);
	a_limit = ((obj_id.x) + (dist_max*64)) + ((obj_id.attack_range)*64);
}
else
{
	a_start = ((obj_id.x) - ((obj_id.attack_range)*64));
	a_limit = ((obj_id.x) + ((obj_id.attack_range)*64));
}
// -------------------------------------------------------------------------------------

b_start = (obj_id.y);
b_limit = (obj_id.y);

for(a=a_start;a<=a_limit;a+=64;)
{
	//POUR LES COLONES -------------------------------------------------------------------------------------
	
	//SI ON EST AVANT LA COLONNE CENTRALE
	if(a <= (obj_id.x) && a != a_start)
	{
		b_backup_start = b_start;
		b_backup_limit = b_limit;
		
		b_start = b_backup_start - 64;
		b_limit = b_backup_limit + 64;
	}
	
	//SI ON CALCULE LA COLONNE CENTRALE OU PLUS A DROITE
	if((a > (obj_id.x)) || (a == a_limit))
	{
		b_backup_start = b_start;
		b_backup_limit = b_limit;
		
		b_start = b_backup_start + 64;
		b_limit = b_backup_limit - 64;
	}
	
	//CALCUL
	for(b=b_start;b<=b_limit;b+=64;)
	{
		with (obj_id)
		{
			if (mp_grid_path(global.navigation_grid, global.navigate, (obj_id.x), (obj_id.y), a, b, 0))
			{
				instance_create_layer(a, b, "Instances_sup", obj_attack_square);
			}
		}
	}
}

return 0;