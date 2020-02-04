/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
if(surface_exists(light_surf))
{	
	//DESSINER LA NUIT
	scr_set_night(light_surf, c_black, 0.95, c_blue, 0.05);
	
	//LUMINOSITE TORCHE
	with(obj_torch_light_source)
	{
		gpu_set_blendmode(bm_subtract); //blendmode substract
		draw_sprite_ext(torch_light, 0, torch_x, torch_y, x_torch_radious, y_torch_radious, 0, c_black, 0.8); //punch through bg with gradient
		gpu_set_blendmode(bm_zero); //blendmode to zero (for coloured lights)
		draw_sprite_ext(torch_light,  0, torch_x, torch_y, x_torch_radious, y_torch_radious, 0, c_orange, 0.65); //punch through again with colour
		gpu_set_blendmode(bm_normal); //blendmode back to normal
	}
	
	//LUMINOSITE BRASIER
	with(obj_brasier_light_source)
	{
		gpu_set_blendmode(bm_subtract); //blendmode substract
		draw_sprite_ext(campfire_light, 0, brasier_x, brasier_y, x_brasier_radious, y_brasier_radious, 0, c_black, 0.8); //punch through bg with gradient
		gpu_set_blendmode(bm_zero); //blendmode to zero (for coloured lights)
		draw_sprite_ext(campfire_light,  0, brasier_x, brasier_y, x_brasier_radious, y_brasier_radious, 0, c_orange, 0.65); //punch through again with colour
		gpu_set_blendmode(bm_normal); //blendmode back to normal	
	}
	
	//LUMINOSITE CHEMINE
	with(obj_chemine_fer)
	{
		gpu_set_blendmode(bm_subtract); //blendmode substract
		draw_sprite_ext(campfire_light, 0, chemine_x, chemine_y, x_chemine_radious, y_chemine_radious, 0, c_black, 0.8); //punch through bg with gradient
		gpu_set_blendmode(bm_zero); //blendmode to zero (for coloured lights)
		draw_sprite_ext(campfire_light,  0, chemine_x, chemine_y, x_chemine_radious, y_chemine_radious, 0, c_orange, 0.65); //punch through again with colour
		gpu_set_blendmode(bm_normal); //blendmode back to normal	
	}
	
	surface_reset_target(); //reset the target (means everything above is ready to be drawn)
	draw_surface_ext(light_surf, 0, 0, 1, 1, 0, c_white, 0.8); //draw the surface (everything above)
}
else
{
	light_surf = surface_create(room_width, room_height);
}
