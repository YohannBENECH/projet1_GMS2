/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

nb_clic = clics_counter.nb_clic;

//CREER INSTANCE DE map_background
if(nb_clic >= 0 && nb_clic <  6 && map_drawing_check == false )
{
	instance_create_layer(0,0,"background_2",map_background); //dessiner map
	map_drawing_check = true;
}

//CREER INSTANCE DE text_box_type_1
if((nb_clic >= 0) && (nb_clic < global.clic_limite) && (text_box_drawing_check == false))
{
	instance_create_layer(110,865,"objets",text_box_type_1) //je dessine la text box en créant une instance dans la couche "Instances"
	text_box_drawing_check = true; //afin d éviter une re création inutile
}

switch(nb_clic)
{
	case 0 :
		//draw_sprite(map_small, 0, 0, 0);
		if(arrow_drawing_check == 0)
		{
			instance_destroy(arrow_obj);
		}
	break;
	
	case 1 :
		//CREER L INSTANCE FLECHE DU CAS 1
		instance_create_layer(538,698,"objets",arrow_obj);
		
		//EFFACER LES INSTANCES DU CAS 2 EN CAS DE RETOUR EN ARRIERE
		if(arrow_drawing_check == 1)
		{
			instance_destroy(arrow_obj);
			arrow_drawing_check = arrow_drawing_check - 1;
		}
	break;
	
	case 2 :
		//EFFACER LES INSTANCES DU CAS 1
		if(arrow_drawing_check == 0)
		{
			instance_destroy(arrow_obj);
			arrow_drawing_check = arrow_drawing_check + 1;
		}
		//EFFACER LES INSTANCES DU CAS 3 EN CAS DE RETOUR EN ARRIERE
		if(arrow_drawing_check == 2)
		{
			instance_destroy(arrow_obj);
			arrow_drawing_check = arrow_drawing_check - 1;
		}
		//CREER L INSTANCE FLECHE DU CAS 2
		instance_create_layer(1112,717,"objets",arrow_obj);
	break;
	
	case 3 :
		//EFFACER LES INSTANCES DU CAS 2
		if(arrow_drawing_check == 1)
		{
			instance_destroy(arrow_obj);
			arrow_drawing_check = arrow_drawing_check + 1;
		}
		//EFFACER LES INSTANCES DU CAS 4 EN CAS DE RETOUR EN ARRIERE
		if(arrow_drawing_check == 3)
		{
			instance_destroy(arrow_obj);
			arrow_drawing_check = arrow_drawing_check - 1;
		}
		//CREER L INSTANCE FLECHE DU CAS 3
		instance_create_layer(1186,316,"objets",arrow_obj);
	break;
	
	case 4 :
		//EFFACER LES INSTANCES DU CAS 3
		if(arrow_drawing_check == 2)
		{
			instance_destroy(arrow_obj);
			arrow_drawing_check = arrow_drawing_check + 1;
		}
		//EFFACER LES INSTANCES DU CAS 5 EN CAS DE RETOUR EN ARRIERE
		if(arrow_drawing_check == 4)
		{
			instance_destroy(arrow_obj);
			arrow_drawing_check = arrow_drawing_check - 1;
		}
		//CREER L INSTANCE FLECHE DU CAS 4
		instance_create_layer(1524,554,"objets",arrow_obj);
	break;
	
	case 5 :
		//EFFACER LES INSTANCES DU CAS 4
		if(arrow_drawing_check == 3)
		{
			instance_destroy(arrow_obj);
			arrow_drawing_check = arrow_drawing_check + 1;
		}
		//EFFACER LES INSTANCES DE arrow_obj CAS EN CAS DE RETOUR EN ARRIERE
		if(arrow_drawing_check == 5)
		{
			instance_destroy(arrow_obj);
			arrow_drawing_check = arrow_drawing_check - 1;
			instance_create_layer(0,0,"background_2",map_background); //dessiner map
		}
		//CREER L INSTANCE FLECHE DU CAS 5
		instance_create_layer(1665,148,"objets",arrow_obj);
	break;
	
	case 6 :
		//EFFACER LES INSTANCES DU CAS 5
		if(arrow_drawing_check == 4)
		{
			instance_destroy(arrow_obj);
			arrow_drawing_check = arrow_drawing_check + 1;
		}
		/*
		if(arrow_drawing_check == 5)
		{
			instance_destroy(arrow_obj);
			arrow_drawing_check = arrow_drawing_check - 1;
		}*/
		
		//EFFACER INSTANCES DE map_background
		instance_destroy(map_background); //détruit la map
	break;
}