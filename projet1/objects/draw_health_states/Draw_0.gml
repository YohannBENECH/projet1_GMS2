/// @DRAW THIS FUCKING HEALTHBAR

	//----------------------------------------------------------------------------------------------------------------------------
	//DRAW HEALTH BAR
	//----------------------------------------------------------------------------------------------------------------------------

	with(par_all_units)
	{
		if(PV_restant < PV)
		{
			draw_healthbar(x-30, y+26, x+30, y+30, ((PV_restant/PV)*100), c_black, c_black, c_blue, 0, true, true)
		}
	
	
		if(fortified == true)
		{
			draw_sprite(sprt_bouclier, -1, x, y);
		}
	}
	
	
	
	