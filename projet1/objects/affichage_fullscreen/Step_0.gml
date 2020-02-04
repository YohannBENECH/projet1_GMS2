/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

/* teste si l affiche est deja en plein ecran ainsi que si la touche # est activée */
if(keyboard_check_pressed(ord("P")) && print_check_screen == true)
{
	window_set_fullscreen(false); //enleve le plein écran
	print_check_screen = false;
}


/* teste si l affiche est deja en plein ecran ainsi que si la touche # est activée */
if(keyboard_check_pressed(ord("O")) && print_check_screen == false) 
{
	window_set_fullscreen(true); //met en plein écran
	print_check_screen = true;
}

//Modifier les dimensions de la fenetre


if (keyboard_check_pressed(ord("I")))
   {
   global.scale += 1;
   window_set_size(200 * global.scale, 150 * global.scale);
   }
 if (keyboard_check_pressed(ord("U")))
   {
   global.scale -= 1;
   window_set_size(200 * global.scale, 150 * global.scale);
   }