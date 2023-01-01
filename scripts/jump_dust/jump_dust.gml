// Gli asset per gli script sono cambiati per la versione 2.3.0; si rimanda a
// https://help.yoyogames.com/hc/en-us/articles/360005277377 per maggiori informazioni
function jump_dust(){
	var inst=instance_create_layer(x,y,"Dust",o_player_dust_jump);
	inst.image_xscale=facing;
}