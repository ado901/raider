// Gli asset per gli script sono cambiati per la versione 2.3.0; si rimanda a
// https://help.yoyogames.com/hc/en-us/articles/360005277377 per maggiori informazioni
function calc_movement(){
hsp=hsp+(right-left)*walk_spd;
vsp+=global.grav;
//drag
hsp=lerp(hsp,0,drag);

//stop
if abs(hsp) == 0.1 hsp= 0;
//face correct way
if hsp != 0 facing = sign(hsp);
//limit speed
hsp=min(abs(hsp),max_hsp)*facing;
}