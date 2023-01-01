// Gli asset per gli script sono cambiati per la versione 2.3.0; si rimanda a
// https://help.yoyogames.com/hc/en-us/articles/360005277377 per maggiori informazioni
function anim(){
	sprite_index=sprites_array[state];
	mask_index=mask_array[state];
	image_xscale=facing;
	switch(state){
		case states.JUMP:
			if vsp<0 image_index=0 else image_index=1;
			break;
		case states.ATTACK:
		if !on_ground() sprite_index=s_player_air_attack;
		else{
			if hsp!=0 sprite_index=s_player_attack_walk
			else sprite_index = s_player_attack;
		}
			break;
	}
}