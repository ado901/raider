// Gli asset per gli script sono cambiati per la versione 2.3.0; si rimanda a
// https://help.yoyogames.com/hc/en-us/articles/360005277377 per maggiori informazioni
function block_check(){
if block{
		if down state= states.CROUCH_BLOCK
		else state =states.BLOCK;
		hsp=0;
	}else {
		if down{
			state=states.CROUCH;
			hsp=0;
		}else{
			if hsp!=0{
				if !on_ground() state =states.JUMP else state= states.WALK;
				}else{
				state= states.IDLE;
				}
	}
	}
}