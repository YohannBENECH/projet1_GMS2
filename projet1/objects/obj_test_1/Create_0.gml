/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

Nom = "Test"
Classe = instance_create_layer(x, y, "Instances", C_TEST);

//Stats
PV = 10;
PV_restant = 9;
Atk = 0;
Vit = 0;
Def = 0;
Res = 0;

attack_range = 1;

//Inventaire
Inventaire = noone;

//Sprites 1
offensive_mod = sprt_test_1;
passive_mod = sprt_test_1;
moving_mod = sprt_test_1;

//Etat
fortified = false;
played = false;

//Pathfinding
balise_x = x;
balise_y = y;
balise_xscale = image_xscale;

//Killed By...
killed_by = noone;





