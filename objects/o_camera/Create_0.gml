/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor

//get dimensions
var _w =camera_get_view_width(view_camera[0]);
var _h =camera_get_view_height(view_camera[0]);
//create camera
camera=camera_create_view(0,0,_w,_h,0,-1,-1,-1,128,128);
view_set_camera(0,camera);
//camera followeing vars
follow=noone;
move_to_x=x;
move_to_y=y;

//how fast the camera pans
camera_pan_speed_initial=0.15;
camera_pan_speed=1;

//reset camera to default pan speed
alarm[CAMERA_RESET]=3;
//move onto main room
room_goto_next();