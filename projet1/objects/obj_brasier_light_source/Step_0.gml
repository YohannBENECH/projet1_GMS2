/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

var flicker=random_range(-0.02,0.02); //random var
x_brasier_radious += flicker;
y_brasier_radious += flicker;

x_brasier_radious = clamp(x_brasier_radious, 0.95, 1.10); //clamp = keep value between [-] and [-]
y_brasier_radious = clamp(y_brasier_radious, 0.95, 1.10); //clamp = keep value between [-] and [-]
 