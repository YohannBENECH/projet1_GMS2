/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

var flicker=random_range(-0.02,0.02); //random var
x_chemine_radious += flicker;
y_chemine_radious += flicker;

x_chemine_radious = clamp(x_chemine_radious, 0.95, 1.10); //clamp = keep value between [-] and [-]
y_chemine_radious = clamp(y_chemine_radious, 0.95, 1.10); //clamp = keep value between [-] and [-]
 