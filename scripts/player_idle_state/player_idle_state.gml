// Gli asset per gli script sono cambiati per la versione 2.3.0; si rimanda a
// https://help.yoyogames.com/hc/en-us/articles/360005277377 per maggiori informazioni
function player_idle_state(){
	//get input
	get_input();
	//calculate movement
	calc_movement();
	//check state
	if hsp!=0 state=states.WALK;
	
	if attack{
		state=states.ATTACK;
		image_index=0;
	}
	if jump{
		jumped();
	}
	if block{
		state= states.BLOCK;
		hsp=0;
	}
	if down{
		state=states.CROUCH;
		hsp=0;
	}
	//apply movement
	collision();
	//apply animation
	anim();
}