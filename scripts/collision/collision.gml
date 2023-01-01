// Gli asset per gli script sono cambiati per la versione 2.3.0; si rimanda a
// https://help.yoyogames.com/hc/en-us/articles/360005277377 per maggiori informazioni
function collision(){
	if hsp==0 hsp_decimal=0;
	if vsp==0 vsp_decimal=0;
	//horizontal collision
	//apply carried over decimals
	hsp+=hsp_decimal;
	vsp+=vsp_decimal;
	//floor decimals
	//save and substract decimals
	hsp_decimal=hsp-(floor(abs(hsp))*sign(hsp));
	hsp-=hsp_decimal
	vsp_decimal=vsp-(floor(abs(vsp))*sign(vsp));
	vsp-=vsp_decimal
	//hor collision
	var side;
	//determine which side to test
	if hsp>0 side=bbox_right else side=bbox_left;
	//check top and bottom
	var t1= tilemap_get_at_pixel(global.map,side+hsp,bbox_top);
	var t2= tilemap_get_at_pixel(global.map,side+hsp,bbox_bottom);
	
	if ((t1!= VOID) and (t1!=PLATFORM)) or
		((t2!= VOID) and (t2!=PLATFORM)) {
		//collision found
		if (hsp > 0) x =x -(x mod global.tile_size)+global.tile_size-1-(side-x);
		else x= x-(x mod global.tile_size)- (side-x);
		hsp=0;
	}
	x+=hsp;
	//ver collision
	var side;
	//determine which side to test
	if vsp>0 side=bbox_bottom else side=bbox_top;
	//check left and right
	var t1= tilemap_get_at_pixel(global.map,bbox_left,side+vsp);
	var t2= tilemap_get_at_pixel(global.map,bbox_right,side+vsp);
	var t3 = tilemap_get_at_pixel(global.map,bbox_left,bbox_bottom);
	var t4=tilemap_get_at_pixel(global.map,bbox_right,bbox_bottom);
	if (t1!= VOID and ((vsp>0 or t1!=PLATFORM) and t3!= PLATFORM) or  (t1 ==SOLID and t3==PLATFORM)) or
		(t2!= VOID and ((vsp>0 or t2!=PLATFORM) and t4!= PLATFORM) or  (t2 ==SOLID and t4==PLATFORM)) {
		//collision found
		if (vsp > 0) y =y -(y mod global.tile_size)+global.tile_size-1-(side-y);
		else y= y-(y mod global.tile_size)- (side-y);
		vsp=0;
	}else{
		if ((t1 == PLATFORM and t3 == PLATFORM) or (t2 == PLATFORM and t4 == PLATFORM)) and vsp > 0 {
		//get tiles cell y position
		var t1y = tilemap_get_cell_y_at_pixel(global.map, bbox_left, side + vsp);
		var t2y = tilemap_get_cell_y_at_pixel(global.map, bbox_right, side + vsp);
		var t3y = tilemap_get_cell_y_at_pixel(global.map, bbox_left, bbox_bottom);
		var t4y = tilemap_get_cell_y_at_pixel(global.map, bbox_right, bbox_bottom);
		//if these do no match, we are moving down to a new tile
		if t1y != t3y or t2y != t4y {
			//collision found, move to the top of the platform tile
			if (vsp > 0) y = y - (y mod global.tile_size) + global.tile_size - 1 - (side - y);
			else y = y - (y mod global.tile_size) - (side - y);
			vsp = 0;
		}
	}

	}
	y+=vsp;
}