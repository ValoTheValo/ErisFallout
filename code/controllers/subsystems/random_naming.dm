SUBSYSTEM_DEF(random_naming)
	name = "Random Naming"
	flags = SS_NO_FIRE
	init_order = INIT_RANDOM_NAMING

	var/list/art_weapon_first_names
	var/list/art_weapon_second_names

/datum/controller/subsystem/random_naming/Initialize(timeofday)

	art_weapon_first_names = file2list("config/names/art_weapon_first_names.txt")
	art_weapon_second_names = file2list("config/names/art_weapon_second_names.txt")

//When you need something simple
/datum/controller/subsystem/random_naming/proc/get_weapon_name(capitalize = FALSE)

	var/first_name = pick(art_weapon_first_names)
	var/second_name = pick(art_weapon_second_names)

	if(capitalize)
		first_name = capitalize(first_name)
		second_name = capitalize(second_name)

	var/weapon_name = "[first_name] [second_name]"
	return weapon_name
