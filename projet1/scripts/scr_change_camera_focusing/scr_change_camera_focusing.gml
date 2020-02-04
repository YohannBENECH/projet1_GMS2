
var name_cam;
var obj_to_focus;
var zoom;
var target;

name_cam = argument0;
obj_to_focus = argument1;
zoom = argument2;



view_camera[0] = camera_create_view(0, 0, 640, 480, 0, obj_to_focus, 5, 5, -1, -1);
target = camera_get_view_target(view_camera[0]);

if(target != obj_to_focus)
{
	camera_set_view_target(name_cam, obj_to_focus);
}


