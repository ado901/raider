/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor
//move towards move_to_x and move_to_y
x=lerp(x,move_to_x,camera_pan_speed);
y=lerp(y,move_to_y,camera_pan_speed);

camera_set_view_pos(camera,x-camera_get_view_width(camera)/2,y-camera_get_view_height(camera)/2);

if follow!= noone{
	move_to_x = follow.x;
	var _buffer=global.tile_size/2;
	move_to_y=follow.y- _buffer;
}
var xx=clamp(camera_get_view_x(camera),0,room_width-camera_get_view_width(camera));
var yy=clamp(camera_get_view_y(camera),0,room_width-camera_get_view_height(camera));
camera_set_view_pos(camera,xx,yy);
//background scrolling
var layer_id=layer_get_id("Background");
layer_x(layer_id,lerp(0,camera_get_view_x(view_camera[0]),0.7));
layer_y(layer_id,lerp(0,camera_get_view_y(view_camera[0]),0.4));