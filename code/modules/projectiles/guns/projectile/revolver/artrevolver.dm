//A randomized revolver with random stats and caliber, meant for artist job project

/obj/item/weapon/gun/projectile/revolver/artrevolver
	name = "Custom Gun"
	desc = "A statement of violent intent."
	icon = 'icons/obj/guns/projectile/artrevolvers.dmi'
	icon_state = "art_revolver"
	drawChargeMeter = FALSE
	caliber = CAL_MAGNUM
	origin_tech = list(TECH_COMBAT = 3, TECH_MATERIAL = 3)
	max_shells = 6
	ammo_type = /obj/item/ammo_casing/magnum
	matter = list(MATERIAL_PLASTEEL = 15, MATERIAL_PLASTIC = 8)
	price_tag = 1700
	damage_multiplier = 1.3
	penetration_multiplier = 1.5
	recoil_buildup = 35

/obj/item/weapon/gun/projectile/revolver/artrevolver/Initialize()

	. = ..()

	name = SSrandom_naming.get_weapon_name(capitalize = TRUE)

	var/random_icon = rand(1,5)
	icon_state = "art_revolver_[random_icon]"
	item_state = "art_revolver_[random_icon]"
	update_icon()

	max_shells = rand(4,8)
	damage_multiplier = 0.8 + rand(1,10) * 0.1
	penetration_multiplier = 0.8 + rand(1,10) * 0.1
	recoil_buildup = 30 + rand(1,30)
	price_tag = 1500 + rand(1,20) * 100
	force = 8 + rand(1,15)


	if(prob(30))
		caliber = CAL_PISTOL
		ammo_type = /obj/item/ammo_casing/pistol
		max_shells = max_shells + 2
		recoil_buildup = recoil_buildup - 20

	else if (prob(10))
		caliber = CAL_ANTIM
		ammo_type = /obj/item/ammo_casing/antim
		max_shells = max(1, max_shells - 3)
		//It's too powerful, so stats are lowered a bit
		damage_multiplier = damage_multiplier - 0.2
		penetration_multiplier = penetration_multiplier - 0.2
		recoil_buildup = recoil_buildup + 120 //because fuck you
