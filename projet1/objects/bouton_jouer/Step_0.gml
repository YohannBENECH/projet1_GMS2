/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur


if(point_in_rectangle(mouse_x, mouse_y, x-sprite_width/2, y-sprite_height/2, x+sprite_width/2, y+sprite_height/2)) //teste si la sourie est sur le bouton
{
	image_xscale = 2.4; //grossi la largeur du sprite
	image_yscale = 2.4; //grossi la hauteur du sprite
	
	if(mouse_check_button_pressed(mb_left))
	{
		pressed = true;
	}
	
	if(mouse_check_button(mb_left) and pressed==true)
	{
		image_alpha = 0.5;
		scr_room_jumper(1);
		
	}
	if(mouse_check_button_released(mb_left))
	{
		image_alpha = 1;
	}
}
else
{
	image_xscale = 2; //remet les dimensions de boutons à la normale
	image_yscale = 2; //remet les dimensions de boutons à la normale
}