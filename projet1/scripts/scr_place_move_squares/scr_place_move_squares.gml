///Places instance's move squares

var obj_id;
var dist_max;

var i;
var j;

//VARIABLES PLACEMENT DE MOVESQUARE
// i
var i_start;
var i_limit;

// j
var j_start;
var j_limit;
var j_backup_start;
var j_backup_limit;

obj_id = argument0;
dist_max = obj_id.Classe.range;




//Condition pour placer la zone de deplacement -----------------------------
/*
Here is drawn the 3 cells move square
				 __
			  __|__|__
           __|__|__|__|__
		__|__|__|__|__|__|__
	   |__|__|__|__|__|__|__|
		  |__|__|__|__|__|
		     |__|__|__|
			    |__|

	Rappel de Fonction : 

		point_in_circle( x origine, y orignine, x point a tester, y point a tester, rayon du cercle);

		Retourne un booléen, true : le point est dans le cercle
*/

//POUR UNE RANGE MAX DE 1 CASE

//DETRUIRE LES AUTRES MOVE SQUARES 
instance_destroy(obj_move_square);

//-----------------------------------------------------------------------------------------------------

i_start = (obj_id.x) - (dist_max*64);
i_limit = (obj_id.x) + (dist_max*64);

j_start = (obj_id.y);
j_limit = (obj_id.y);

//-----------------------------------------------------------------------------------------------------

for(i=i_start;i<=i_limit;i+=64;)
{
	//POUR LES COLONES -------------------------------------------------------------------------------------
	
	//SI ON EST AVANT LA COLONNE CENTRALE
	if(i <= (obj_id.x) && i != i_start)
	{
		j_backup_start = j_start;
		j_backup_limit = j_limit;
		
		j_start = j_backup_start - 64;
		j_limit = j_backup_limit + 64;
	}
	
	//SI ON CALCULE LA COLONNE CENTRALE OU PLUS A DROITE
	if((i > (obj_id.x)) || (i == i_limit))
	{
		j_backup_start = j_start;
		j_backup_limit = j_limit;
		
		j_start = j_backup_start + 64;
		j_limit = j_backup_limit - 64;
	}
	
	//CALCUL
	for(j=j_start;j<=j_limit;j+=64;)
	{
		with (obj_id)
		{
			if (mp_grid_path(global.navigation_grid, global.navigate, (obj_id.x), (obj_id.y), i, j, 0))
			{
				instance_destroy(instance_nearest(i, j, obj_attack_square));
				instance_create_layer(i, j, "Instances_sup", obj_move_square);
			}
		}
	}
}



























