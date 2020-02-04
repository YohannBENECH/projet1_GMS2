/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

/*draw text_box*******************************************************/
draw_self();

/*draw text***********************************************************/
nb_clic = clics_counter.nb_clic;

draw_set_font(police1);	//défini la police d écriture

if(nb_clic >= 0 and nb_clic < global.clic_limite)
{
	draw_set_halign(fa_left);
	
	/*
		La ligne suivante sert à ecrire du texte : 
			- en changeant la couleur (noir)
			- en multipliant par 1 la largeur et hauteur des lettres
			- avec une origine dcalée par rapport à la boite de texte
	*/
	draw_text_ext_transformed_colour(x+80, y+20, global.myText[nb_clic], 60, 1650, 1, 1, 0, c_black, c_black, c_black, c_black, 1);
}