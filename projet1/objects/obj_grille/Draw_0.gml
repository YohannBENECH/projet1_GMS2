/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

if(keyboard_check_pressed(ord("G")))
{
	grid_drawing = true;
}

if(keyboard_check_released(ord("G")))
{
	grid_drawing = false;
}


if(grid_drawing == true)
{
	scr_draw_tactical_grid();
}
