-- UNITDEF -- TLLCS --
--------------------------------------------------------------------------------

local unitName = "tllcs"

--------------------------------------------------------------------------------

local unitDef = {
	acceleration = 0.02,
	bmcode = 1,
	brakeRate = 0.038,
	buildCostEnergy = 2455,
	buildCostMetal = 275,
	buildDistance = 265,
	builder = true,
	buildTime = 5818,
	canGuard = true,
	canMove = true,
	canPatrol = true,
	canreclamate = 1,
	canstop = 1,
	category = [[ALL CONSTR MEDIUM MOBILE NOTDEFENSE NOTHOVERNOTVTOL NOTSUB NOTVTOL NOTWEAPON]],
	collisionVolumeOffsets = [[0 -7 -2]],
	collisionVolumeScales = [[31.767078399658 39.767078399658 64.767074584961]],
	collisionVolumeTest = 0,
	collisionVolumeType = [[ellipsoid]],
	copyright = [[Copyright 1997 Humongous Entertainment. All rights reserved.]],
	corpse = [[dead]],
	defaultmissiontype = [[Standby]],
	description = [[Tech Level 1]],
	designation = [[]],
	energyMake = 8,
	energyStorage = 50,
	energyUse = 0.1,
	explodeAs = [[SMALL_UNITEX]],
	floater = true,
<<<<<<< HEAD
	footprintX = 4,
	footprintZ = 4,
=======
	footprintX = 3,
	footprintZ = 3,
>>>>>>> testmerge
	frenchdescription = [[Niveau Tech 1]],
	frenchname = [[Navire de construction]],
	germandescription = [[Tech Level 1]],
	germanname = [[Konstr.-Schiff]],
	italiandescription = [[Tecnologia Livello 1]],
	italianname = [[Nave Costruttrice]],
	maneuverleashlength = 640,
	maxDamage = 1145,
	maxVelocity = 2.15,
	metalMake = 0.3,
	metalStorage = 50,
	minWaterDepth = 20,
	mobilestandorders = 1,
<<<<<<< HEAD
	movementClass = [[BOAT4]],
=======
	movementClass = [[BOAT3]],
>>>>>>> testmerge
	name = [[Construction Ship]],
	noAutoFire = false,
	noChaseCategory = [[VTOL]],
	objectName = [[TLLCS]],
	selfDestructAs = [[SMALL_UNIT]],
	shootme = 1,
	side = [[TLL]],
	sightDistance = 225,
	spanishdescription = [[Nivel Tecn. 1]],
	spanishname = [[Buque de Constr.]],
	standingmoveorder = 1,
	steeringmode = 1,
	threed = 1,
	turnRate = 321,
	unitname = [[tllcs]],
	unitnumber = 852,
	version = 3.1,
	waterline = 4,
	workerTime = 160,
	zbuffer = 1,
	buildoptions = {
		[1] = [[tlltide]],
		[2] = [[tllatidal]],
		[3] = [[tlluwmex]],
		[4] = [[tllwmconv]],
		[5] = [[tlluwmstorage]],
		[6] = [[tlluwestorage]],
		[7] = [[tllhevsenan]],
		[8] = [[tllsy]],
		[9] = [[tllasy]],
		[10] = [[tllhpns]],
		[11] = [[tllsubpen]],
		[12] = [[tllsonar]],
		[13] = [[tlldtns]],
		[14] = [[tlldcsta]],
		[15] = [[tlllmtns]],
		[16] = [[tllnssam]],
		[17] = [[tllhltns]],
		[18] = [[tlltorp]],
		[19] = [[tllplat]],
		[20] = [[tllsolarns]],
	},
	featureDefs = nil,
	sounds = {
		build = [[nanlath1]],
		canceldestruct = [[cancel2]],
		repair = [[repair1]],
		underattack = [[warning1]],
		working = [[reclaim1]],
		cant = {
			[1] = [[cantdo4]],
		},
		count = {
			[1] = [[count6]],
			[2] = [[count5]],
			[3] = [[count4]],
			[4] = [[count3]],
			[5] = [[count2]],
			[6] = [[count1]],
		},
		ok = {
			[1] = [[sharmmov]],
		},
		select = {
			[1] = [[sharmsel]],
		},
	},
}

--------------------------------------------------------------------------------

local featureDefs = {
	dead = {
		blocking = false,
		category = [[tll_corpses]],
		damage = 0.6000 * unitDef.maxDamage,
		description = [[Wreckage]],
		featureDead = [[heap]],
		featurereclamate = [[smudge01]],
		footprintX = 4,
		footprintZ = 4,
		height = 4,
		hitdensity = 100,
		metal = 0.8000 * unitDef.buildCostMetal,
		object = [[TLLCS_dead]],
		reclaimable = true,
		seqnamereclamate = [[tree1reclamate]],
		world = [[All Worlds]],
	},
	heap = {
		blocking = false,
		category = [[heaps]],
		damage = 0.3600 * unitDef.maxDamage,
		description = [[Wreckage]],
		featurereclamate = [[smudge01]],
		footprintX = 4,
		footprintZ = 4,
		height = 4,
		hitdensity = 80,
		metal = 0.6400 * unitDef.buildCostMetal,
		object = [[4x4D]],
		reclaimable = true,
		seqnamereclamate = [[tree1reclamate]],
		world = [[All Worlds]],
	},
}
unitDef.featureDefs = featureDefs

--------------------------------------------------------------------------------

return lowerkeys({[unitName] = unitDef})

--------------------------------------------------------------------------------
