/// @description CREER LA GRILLE

//Celle qui servira de navigation pour l ordi
global.navigation_grid = mp_grid_create(32,32, room_width/32, room_height/32, 32, 32);
global.navigate = path_add();

mp_grid_add_instances(global.navigation_grid, par_obstacles, true);

grid_drawing = false;