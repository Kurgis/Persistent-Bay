/obj/skybox
	name = "skybox"
	mouse_opacity = 0
	blend_mode = BLEND_MULTIPLY
	plane = SKYBOX_PLANE
//	invisibility = 101
	anchored = TRUE
	should_save = FALSE
	icon = 'icons/turf/skybox.dmi'
	var/mob/owner
	var/image/image
	var/image/stars
	
/obj/skybox/Initialize()
	. = ..()
	var/mob/M = loc
	SSskybox.skyboxes += src
	owner = M
	owner.skybox = src
	color = SSskybox.BGcolor
	image = image(icon, src, "background_[SSskybox.BGstate]")
	overlays += image

	if(SSskybox.use_stars)
		stars = image(icon, src, SSskybox.star_state)
		stars.appearance_flags = RESET_COLOR
		overlays += stars
	DoRotate()
	update()

/obj/skybox/proc/update()
	if(!owner || !owner.client)
		return
	var/turf/T = get_turf(owner.client.eye)
	screen_loc = "CENTER:[-224-(T&&T.x)],CENTER:[-224-(T&&T.y)]"

/obj/skybox/proc/DoRotate()
	var/matrix/rotation = matrix()
	rotation.TurnTo(SSskybox.BGrot)

/obj/skybox/Destroy()
	owner = null
	SSskybox.skyboxes -= src
	return ..()

/mob
	var/obj/skybox/skybox

/mob/Move()
	. = ..()
	if(. && skybox)
		skybox.update()

/mob/forceMove()
	. = ..()
	if(. && skybox)
		skybox.update()

/mob/Login()
	if(!skybox)
		skybox = new(src)
	client.screen += skybox
	redraw_inv()
	..()

/mob/Destroy()
	if(client)
		client.screen -= skybox
	QDEL_NULL(skybox)
	return ..()
