
var drawing_surface = argument0;
var color_1 = argument1;
var alpha_1 = argument2;
var color_2 = argument3;
var alpha_2 = argument4;

//DESSINER LA NUIT
surface_set_target(drawing_surface); //set the surface to draw on
draw_clear_alpha(color_1, alpha_1); //draw clear background

//AJOUTER UNE TEINTE BLEUE A LA NUIT 
draw_set_alpha(alpha_2);
draw_rectangle_color(0, 0, room_width, room_height, color_2, color_2, color_2, color_2, 0);
draw_set_alpha(1);







