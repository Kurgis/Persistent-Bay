/*
 * Screwdriver
 */
/obj/item/weapon/tool/screwdriver
	name = "screwdriver"
	desc = "Your archetypal flathead screwdriver, with a nice, heavy polymer handle."
	description_info = "This tool is used to expose or safely hide away cabling. It can open and shut the maintenance panels on vending machines, airlocks, and much more. You can also use it, in combination with a crowbar, to install or remove windows."
	description_fluff = "Screws have not changed significantly in centuries, and neither have the drivers used to install and remove them."
	description_antag = "In the world of breaking and entering, tools like multitools and wirecutters are the bread; the screwdriver is the butter. In a pinch, try targetting someone's eyes and stabbing them with it - it'll really hurt!"
	icon = 'icons/obj/items/tools.dmi'
	icon_state = "screwdriver"
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	slot_flags = SLOT_BELT | SLOT_EARS
	force = 4.0
	w_class = ITEM_SIZE_TINY
	throwforce = 5.0
	throw_speed = 3
	throw_range = 5
	matter = list(MATERIAL_STEEL = 75)
	center_of_mass = "x=16;y=7"
	attack_verb = list("stabbed")
	lock_picking_level = 5
	damtype = DAM_PIERCE

/obj/item/weapon/tool/screwdriver/Initialize()
	switch(pick("red","blue","purple","brown","green","cyan","yellow"))
		if ("red")
			icon_state = "screwdriver2"
			item_state = "screwdriver"
		if ("blue")
			icon_state = "screwdriver"
			item_state = "screwdriver_blue"
		if ("purple")
			icon_state = "screwdriver3"
			item_state = "screwdriver_purple"
		if ("brown")
			icon_state = "screwdriver4"
			item_state = "screwdriver_brown"
		if ("green")
			icon_state = "screwdriver5"
			item_state = "screwdriver_green"
		if ("cyan")
			icon_state = "screwdriver6"
			item_state = "screwdriver_cyan"
		if ("yellow")
			icon_state = "screwdriver7"
			item_state = "screwdriver_yellow"

	if (prob(75))
		src.pixel_y = rand(0, 16)
	. = ..()

/obj/item/weapon/tool/screwdriver/attack(mob/living/carbon/M as mob, mob/living/carbon/user as mob)
	if(!istype(M) || user.a_intent == "help")
		return ..()
	if(user.zone_sel.selecting != BP_EYES && user.zone_sel.selecting != BP_HEAD)
		return ..()
	if((CLUMSY in user.mutations) && prob(50))
		M = user
	return eyestab(M,user)

/obj/item/weapon/tool/screwdriver/play_tool_sound()
	playsound(loc, 'sound/items/Screwdriver.ogg', 50, 1)