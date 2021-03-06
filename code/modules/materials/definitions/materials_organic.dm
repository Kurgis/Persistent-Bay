/material/plastic
	name = MATERIAL_PLASTIC
	stack_type = /obj/item/stack/material/plastic
	flags = MATERIAL_BRITTLE
	icon_colour = "#cccccc"
	icon_base = "solid"
	icon_reinf = "jaggy"
	hardness = 10
	weight = 5
	melting_point = T0C+371 //assuming heat resistant plastic
	stack_origin_tech = list(TECH_MATERIAL = 3)
	conductive = 0
	chem_products = list(
				/datum/reagent/toxin/plasticide = 20
				)
	energy_combustion = 46.3

/material/plastic/holographic
	name = "holoplastic"
	display_name = MATERIAL_PLASTIC
	stack_type = null
	shard_type = SHARD_NONE

/material/wood
	name = MATERIAL_WOOD
	adjective_name = "wooden"
	stack_type = /obj/item/stack/material/wood
	icon_colour = COLOR_WOOD
	icon_base = "solid"
	icon_reinf = "jaggy"
	icon_door = "wood"
	integrity = 50
	explosion_resistance = 2
	shard_type = SHARD_SPLINTER
	shard_can_repair = 0 // you can't weld splinters back into planks
	hardness = 15
	brute_armor = 1
	weight = 18
	melting_point = T0C+300 //okay, not melting in this case, but hot enough to destroy wood
	ignition_point = T0C+288
	stack_origin_tech = list(TECH_MATERIAL = 1, TECH_BIO = 1)
	dooropen_noise = 'sound/effects/doorcreaky.ogg'
	destruction_desc = "splinters"
	sheet_singular_name = "plank"
	sheet_plural_name = "planks"
	hitsound = 'sound/effects/woodhit.ogg'
	conductive = 0
	chem_products = list(
				/datum/reagent/carbon = 10,
				/datum/reagent/water = 5
				)
	energy_combustion = 18

/material/wood/holographic
	name = "holowood"
	display_name = MATERIAL_WOOD
	stack_type = null
	shard_type = SHARD_NONE

/material/cardboard
	name = MATERIAL_CARDBOARD
	stack_type = /obj/item/stack/material/cardboard
	flags = MATERIAL_BRITTLE
	integrity = 10
	icon_colour = "#aaaaaa"
	icon_base = "solid"
	icon_reinf = "jaggy"
	icon_door = "wood"
	hardness = 1
	brute_armor = 1
	weight = 1
	ignition_point = T0C+232 //"the temperature at which book-paper catches fire, and burns." close enough
	melting_point = T0C+232 //temperature at which cardboard walls would be destroyed
	stack_origin_tech = list(TECH_MATERIAL = 1)
	destruction_desc = "crumples"
	conductive = 0
	energy_combustion = 8

/material/cloth //todo
	name = MATERIAL_CLOTH
	stack_origin_tech = list(TECH_MATERIAL = 2)
	icon_door = "wood"
	ignition_point = T0C+232
	melting_point = T0C+300
	flags = MATERIAL_PADDING
	brute_armor = 1
	conductive = 0
	stack_type = /obj/item/stack/material/cloth
	hardness = 1
	weight = 1
	energy_combustion = 8

//TODO PLACEHOLDERS:
/material/leather
	name = MATERIAL_LEATHER
	icon_colour = "#5c4831"
	stack_origin_tech = list(TECH_MATERIAL = 2)
	flags = MATERIAL_PADDING
	ignition_point = T0C+300
	melting_point = T0C+300
	conductive = 0
	stack_type = /obj/item/stack/material/leather
	hardness = 1
	weight = 1
	energy_combustion = 8

/material/carpet
	name = MATERIAL_CARPET
	display_name = "red"
	use_name = "red upholstery"
	icon_colour = "#9d2300"
	flags = MATERIAL_PADDING
	ignition_point = T0C+232
	melting_point = T0C+300
	sheet_singular_name = "tile"
	sheet_plural_name = "tiles"
	conductive = 0
	stack_type = null
	hardness = 1
	weight = 1
	energy_combustion = 8

/material/cotton
	name = MATERIAL_COTTON
	display_name ="grey"
	icon_colour = "#ffffff"
	flags = MATERIAL_PADDING
	ignition_point = T0C+232
	melting_point = T0C+300
	conductive = 0
	stack_type = null
	hardness = 1
	weight = 1
	energy_combustion = 8

/material/cloth_yellow
	name = "yellow"
	display_name ="yellow"
	icon_colour = "#ffbf00"
	flags = MATERIAL_PADDING
	ignition_point = T0C+232
	melting_point = T0C+300
	conductive = 0
	stack_type = null
	hardness = 1
	weight = 1

/material/cloth_teal
	name = "teal"
	display_name ="teal"
	use_name = "teal cloth"
	icon_colour = "#00e1ff"
	flags = MATERIAL_PADDING
	ignition_point = T0C+232
	melting_point = T0C+300
	conductive = 0
	stack_type = null
	hardness = 1
	weight = 1

/material/cloth_black
	name = "black"
	display_name = "black"
	use_name = "black cloth"
	icon_colour = "#505050"
	flags = MATERIAL_PADDING
	ignition_point = T0C+232
	melting_point = T0C+300
	conductive = 0
	stack_type = null
	hardness = 1
	weight = 1

/material/cloth_green
	name = "green"
	display_name = "green"
	use_name = "green cloth"
	icon_colour = "#b7f27d"
	flags = MATERIAL_PADDING
	ignition_point = T0C+232
	melting_point = T0C+300
	conductive = 0
	stack_type = null
	hardness = 1
	weight = 1

/material/cloth_puple
	name = "purple"
	display_name = "purple"
	use_name = "purple cloth"
	icon_colour = "#9933ff"
	flags = MATERIAL_PADDING
	ignition_point = T0C+232
	melting_point = T0C+300
	conductive = 0
	stack_type = null
	hardness = 1
	weight = 1

/material/cloth_blue
	name = "blue"
	display_name = "blue"
	use_name = "blue cloth"
	icon_colour = "#46698c"
	flags = MATERIAL_PADDING
	ignition_point = T0C+232
	melting_point = T0C+300
	conductive = 0
	stack_type = null
	hardness = 1
	weight = 1

/material/cloth_beige
	name = "beige"
	display_name = "beige"
	use_name = "beige cloth"
	icon_colour = "#ceb689"
	flags = MATERIAL_PADDING
	ignition_point = T0C+232
	melting_point = T0C+300
	conductive = 0
	stack_type = null
	hardness = 1
	weight = 1

/material/cloth_lime
	name = "lime"
	display_name = "lime"
	use_name = "lime cloth"
	icon_colour = "#62e36c"
	flags = MATERIAL_PADDING
	ignition_point = T0C+232
	melting_point = T0C+300
	conductive = 0
	stack_type = null
	hardness = 1
	weight = 1

/material/pink_goo
	name = "pinkgoo"
	stack_type = /obj/item/stack/material/edible/pink_goo_slab
	icon_colour = "#ff6a6a"
	icon_base = "solid"
	integrity = 5
	explosion_resistance = 0
	hardness = 1
	brute_armor = 1
	weight = 8
	melting_point = T0C+300
	ignition_point = T0C+288
	stack_origin_tech = list(TECH_BIO = 2)
	sheet_singular_name = "slab"
	sheet_plural_name = "slabs"
	conductive = 0
	//By default don't put much chem products
	chem_products = list(
				/datum/reagent/nutriment = 10,
				/datum/reagent/nutriment/protein = 10,
				/datum/reagent/blood = 10,
				)