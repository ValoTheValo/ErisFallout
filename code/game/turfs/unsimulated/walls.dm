/turf/unsimulated/wall
	name = "wall"
	icon = 'icons/turf/walls.dmi'
	icon_state = "riveted"
	opacity = 1
	density = TRUE

/turf/unsimulated/wall/fakeglass
	name = "window"
	icon_state = "fakewindows"
	opacity = 0

/turf/unsimulated/wall/other
	icon_state = "r_wall"






/turf/simulated/wall/untinted/wooden
	name = "Wooden wall"
	desc = "A wooden wall not good at preventing bullets from passing through but it at least keeps the vagabonds out"
	icon_state = "woodenwall"
	icon_base_override = "woodenwall"

/turf/simulated/wall/untinted/wooden/New(var/newloc)
	..(newloc, MATERIAL_WOOD)

/turf/simulated/wall/untinted/stone
	name = "Stone wall"
	desc = "A stone wall  good at preventing bullets from passing through and it at least keeps the vagabonds out"
	icon_state = "stonewall_"
	icon_base_override = "woodenwall_"

/turf/simulated/wall/untinted/wooden/New(var/newloc)
	..(newloc, MATERIAL_STONE)