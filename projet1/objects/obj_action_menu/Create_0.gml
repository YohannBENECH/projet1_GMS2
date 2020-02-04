/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

a = false;

obj_player = global.selected;

menu = instance_nearest(obj_player.x, obj_player.y, obj_action_menu); //oui c est sale

for_btn = instance_create_layer(menu.x+25, menu.y+25, "Instances_sup2", obj_button_fortifier);
atk_btn = instance_create_layer(menu.x+25, menu.y+130, "Instances_sup2", obj_button_attaquer);
sav_btn = instance_create_layer(menu.x+25, menu.y+235, "Instances_sup2", obj_button_sauver);
ter_btn = instance_create_layer(menu.x+25, menu.y+340, "Instances_sup2", obj_button_terminer);




