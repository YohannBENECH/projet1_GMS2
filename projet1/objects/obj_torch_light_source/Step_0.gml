/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

var flicker=random_range(-0.01,0.01); //random var
x_torch_radious += flicker;
y_torch_radious += flicker;

x_torch_radious = clamp(x_torch_radious, 0.2, 1.04); //clamp = keep value between 0.06 and 1.04
y_torch_radious = clamp(y_torch_radious, 0.2, 1.04); //clamp = keep value between 0.06 and 1.04
 