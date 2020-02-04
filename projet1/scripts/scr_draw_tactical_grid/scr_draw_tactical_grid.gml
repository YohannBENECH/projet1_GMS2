///DESSINER LA GRILLE TACTIQUE

var epaisseur; //épaisseur du trait de grille
var alpha; // alpha d'affichage de la grille
var i;
var j;

alpha = 1; 
epaisseur = 3; // 2 pixels

draw_set_alpha(0.07);
draw_set_color(c_white);

for (i = 0; i < room_width; i += 64;)
    {
    draw_line_width(i, 0, i, room_height, epaisseur);
    }
for (j = 0; j < room_width; j += 64;)
    {
    draw_line_width(0, j, room_width, j, epaisseur);
    }
	
draw_set_alpha(1);

/*
show_message(i);
show_message(j);
*/
