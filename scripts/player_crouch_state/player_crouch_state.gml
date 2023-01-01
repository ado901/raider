// Gli asset per gli script sono cambiati per la versione 2.3.0; si rimanda a
// https://help.yoyogames.com/hc/en-us/articles/360005277377 per maggiori informazioni
function player_crouch_state(){
	//get input
	get_input();
	//calculate movement
	calc_movement();

	
	
	
	block_check()
	if attack{
		state=states.ATTACK;
		image_index=0;
	}
	if jump{
		jumped();
	}
	//apply movement
	collision();
	//apply animation
	anim();
}