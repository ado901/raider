// Gli asset per gli script sono cambiati per la versione 2.3.0; si rimanda a
// https://help.yoyogames.com/hc/en-us/articles/360005277377 per maggiori informazioni
function jumped(){
// standard jump off the ground
	if on_ground() jumps= jumps_initial;
	if jumps>0{
	state=states.JUMP;
	vsp=jump_spd;
	jumps-=1;
	jump_dust();
	}
}