/mob/living/silicon/decoy/death(gibbed)
	// Only execute the below if we successfully died
	. = ..()
	if(!.)
		return FALSE
	icon_state = "ai-crash"
	for(var/obj/machinery/ai_status_display/display as anything in GLOB.ai_displays) //change status
		if(atoms_share_level(display, src))
			display.mode = AI_DISPLAY_MODE_BSOD
	gib()
